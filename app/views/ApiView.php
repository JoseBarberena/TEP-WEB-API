<?php


class ApiView{

    public function response($data, $status){
        header("Content-Type: application/json");
        header("HTTP/1.1 " . $status . " " . $this->_requestStatus($status));
        echo json_encode($data);
    }

    public function _requestStatus($code){
        $status = array(
            200 => "OK",
            201 => "Created",
            204 => "Non-Authoritative Information",
            400 => "Bad Request",
            404 => "Not found",
            500 => "Internal Server Error"
          );
          return (isset($status[$code]))? $status[$code] : $status[500];
    }
}