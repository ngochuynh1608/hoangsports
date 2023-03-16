<?php

/**
 * NhanhService
 *
 * @author      Chu Khanh Van
 * @category   	NhanhAPI library
 * @copyright  	http://nhanh.vn
 * @license    	http://nhanh.vn/license/
 */
class ModelCheckoutApinhanh extends Model{

 public function addOrder($data, $orderid){


            header('Content-type: text/html; charset=utf-8');
            $products = array();
            if(isset($data['products'])){
                foreach ($data['products'] as $product) {
                    $products[] = array(
                    "id" => $product["product_id"],
                    "idNhanh" => "", // use idNhanh if product is synchronized from Nhanh.vn
                    "quantity" => $product["quantity"],
                    "code" => $product["model"],
                    "name" => $product["name"],
                    "importPrice" => 0,
                    "price" => $product["price"],
                    "description" => ''
                    );
                }
            }
            $datanhanh = array(
            "id" => $orderid,
            "trafficSource" => null,
            "accessDevice" => null,
            "depotId" => null,
            "status" => "New", // New | Confirmed
            "moneyTransfer" => null,
            "paymentMethod" => $data['payment_method'],
            "paymentGateway" => null,
            "paymentCode" => null,
            "carrierId" => 2, // carrierId get from get/shippingFee.php
            "carrierServiceId" => 27, // carrierServiceId get from get/shippingFee.php
            "codFee" => 0,
            "shipFeeBy" => "Sender", // Receiver
            "shipFee" => 0,
            "customerShipFee" => 0,
        //     "deliveryDate" => date('Y-m-d'),
            "description" => $data['comment'],
            "autoSend" => 1,
            "fromName" => null,
            "fromEmail" => null,
            "fromAddress" => null,
            "fromMobile" => null,
            "fromCityName" => null,
            "fromDistrictName" => null,
            "weight" => 900, // in gram
            "width" => null,
            "height" => null,
            "length" => null,
            "createdDateTime" => date('H:m:i d:m:y'),
            "customerName" => $data['firstname'].' '.$data['lastname'],
            "customerMobile" => $data['telephone'],
            "customerEmail" => $data['email'],
            "customerCityName" => $data['payment_zone'],
            "customerDistrictName" => $data['payment_zone'],
            "customerAddress" => $data['payment_address_1'],
            "paymentGateway" => $data['payment_method'] ,
            "moneyTransfer" => $data['total'],

            "productList" => $products

        );
    

        // the storeId in e-commerce platforms, individual websites set $storeId = null;
        // $storeId = 3954509;
        $storeId = null;

        $service = new NhanhService();
        $response = $service->sendRequest(NhanhService::URI_ORDER_ADD, $datanhanh, $storeId);

        if ($response->code) {
            echo "<h1>Success!</h1>";
            if(isset($response->messages)) {
                foreach ($response->messages as $message) {
                    echo "<p>$message</p>";
                }
            }
        } else {
            echo "<h1>Failed!</h1>";
            foreach ($response->messages as $message) {
                echo "<p>$message</p>";
            }
        }
    
 }

}

class NhanhService
{

    const URI_STORE_ADD             = '/api/store/add';
    const URI_GET_PRODUCT_SEARCH    = '/api/product/search';
    const URI_GET_PRODUCT           = '/api/product/detail';
    const URI_GET_PRODUCT_CATEGORY  = '/api/product/category';
    const URI_ADD_PRODUCT           = '/api/product/add';
    const URI_GET_PRODUCT_GIFT      = '/api/product/gift';
    const URI_SHIPPING_FEE          = '/api/shipping/fee';
    const URI_SHIPPING_MULTIFEE     = '/api/shipping/multifee';
    const URI_SHIPPING_CARRIER      = '/api/shipping/carrier';
    const URI_SHIPPING_LOCATION     = '/api/shipping/location';
    const URI_ORDER_INDEX           = '/api/order/index';
    const URI_ORDER_ADD             = '/api/order/add';
    const URI_ORDER_UPDATE          = '/api/order/update';
    const URI_CUSTOMER_SEARCH       = '/api/customer/search';
    const URI_BILL_SEARCH           = '/api/bill/search';

    /**
     * The server will use this parameter to process your request
     */
    const SERVICE_VERSION = '1.0'; // please DO NOT change or remove this value

    /**
     * the server address.
     * testing: https://dev.nhanh.vn
     * production: https://graph.nhanh.vn
     *
     * @var string
     */
    //protected $server = "https://dev.nhanh.vn";
    protected $server = "https://graph.nhanh.vn";

    /**
     * apiUsername
     *
     * @var string
     */
    protected $apiUsername = "hoangsportapi";

    /**
     * secretKey
     *
     * @var string
     */
    protected $secretKey = "BWGvDaKp3HRsK7gzqRbvwfkX";

    /**
     *
     * @return the $server
     */
    public function getServer()
    {
        return $this->server;
    }

    /**
     *
     * @param string $server
     */
    public function setServer($server)
    {
        $this->server = $server;
    }

    /**
     *
     * @return the $apiUsername
     */
    public function getApiUsername()
    {
        return $this->apiUsername;
    }

    /**
     *
     * @param string $apiUsername
     */
    public function setApiUsername($apiUsername)
    {
        $this->apiUsername = $apiUsername;
    }

    /**
     *
     * @return the $secretKey
     */
    public function getSecretKey()
    {
        return $this->secretKey;
    }

    /**
     *
     * @param string $secretKey
     */
    public function setSecretKey($secretKey)
    {
        $this->secretKey = $secretKey;
    }

    public function printApiInfo()
    {
        return 'server: '. $this->getServer() . '<br>apiUsername: '. $this->getApiUsername();
    }

    /**
     * create the checksum
     *
     * @param string|array $data
     */
    public function createChecksum($data)
    {
        if (is_array($data)) {
            $dataString = json_encode($data);
        } else {
            $dataString = $data;
        }
        return md5(md5($this->getSecretKey() . $dataString) . $dataString);
    }

    /**
     * validate the checksum of data
     *
     * @param string|array $data
     * @param string $checksum
     */
    public function isValidChecksum($checksum, $data)
    {
        return $checksum == $this->createChecksum($data);
    }

    /**
     * send request to Nhanh.vn
     *
     * @return stdClass
     */
    public function sendRequest($requestUri, $data = null, $storeId = null)
    {
        if (! function_exists('curl_init')) {
            throw new Exception("curl extension is required to process this request");
            return false;
        }

        $dataString = $data;
        if (is_array($data)) {
            $dataString = json_encode($data);
        }
        $postFields = array(
            "version" => self::SERVICE_VERSION,
            "apiUsername" => $this->getApiUsername(),
            "storeId" => $storeId,
            "data" => $dataString,
            "checksum" => $this->createChecksum($dataString)
        );

        $curl = curl_init($this->getServer() . $requestUri);
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $postFields);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_TIMEOUT, 10);
//         curl_setopt($curl, CURLOPT_CAINFO, './cacert.pem');
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        $curlResult = curl_exec($curl);

        if (curl_error($curl) == "") {
            $response = json_decode($curlResult);
        } else {
            $response = new stdClass();
            $response->code = 0;
            $response->messages = array(
                curl_error($curl)
            );
        }
        curl_close($curl);

        return $response;
    }
}
