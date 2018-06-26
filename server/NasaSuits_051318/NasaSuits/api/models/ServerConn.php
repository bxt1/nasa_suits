<?php
class ServerConn
{
  var $servername ="localhost";
  var $username = "cesl";
  var $password = "cesl123";
  var $dbName = "nasa_suits";
  var $conn;

  function __construct(){//make and initialize Connection
    $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbName);
    //check connection
    if (!$this->conn) {
        die("Text:Connection to sql database Failed. |". mysqli_connect_error());
        return NULL;
    }
    return $this->conn;
  }

  public function closeConnection(){
    if($this->conn)
    $this->conn->close();
  }
}
