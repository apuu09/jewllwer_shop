<?php
    require_once "nusoap.php";
    
    $recipientNumbers=$_POST['number'];
    $message=$_POST['message'];
    $USERNAME = "gostaran_00050";
    $PASSWORD = "DCPtlygjhGnwbruK";
    $DOMAIN = "magfa";
    $BASE_WEBSERVICE_URL = "https://sms.magfa.com/services/urn:SOAPSmsQueue?wsdl";
    $client;
    $ERROR_MAX_VALUE = 1000;
    $errors;
    $outputSeparator = "\n";
    $method = "enqueue";
    $senderNumber = "300084713";
    $checkingMessageIds = array(100, 101);
    $params = array(
        'domain'=>$DOMAIN,
        'messageBodies'=>array($message),
        'recipientNumbers'=>array($recipientNumbers),
        'senderNumbers'=>array($senderNumber),
        'encodings'=>null,
        'udhs'=>null,
        'messageClasses'=>null,
        'priorities='>null,
        'checkingMessageIds'=>$checkingMessageIds
    ); 


$new=array(
  'login' => $USERNAME,
  'password' => $PASSWORD,
  'features' => SOAP_USE_XSI_ARRAY_TYPE
);

$client = new nusoap_client("http://sms.magfa.com/services/urn:SOAPSmsQueue?wsdl",true);
$client->setCredentials($USERNAME,$PASSWORD);

$error = $client->getError();
if ($error) {
    echo "<h2>Constructor error</h2><pre>" . $error . "</pre>";
}

$result = $client->call($method,$params);


if ($client->fault) {
    print_r($result);
} else {
    $error = $client->getError();
    if ($error) {
        echo "<h2>Error</h2><pre>" . $error . "</pre>";
    } else {
        echo $result[0];
    }
}

?>