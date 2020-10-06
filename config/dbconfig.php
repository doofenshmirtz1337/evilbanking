<?php
class Database
{
     
    private $host = "localhost";
    private $db_name = "evilbanking";
    private $username = "user";
    private $password = "veryhardtoguessword";
    public $conn;
     
    public function dbConnection()
	{
     
	    $this->conn = null;    
        try
		{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	
			$this->conn->exec("set names utf8");
        }
		catch(PDOException $exception)
		{
            echo "Connection error: " . $exception->getMessage();
        }
         
        return $this->conn;
    }
}
$url_path = "http://172.17.0.2/"
?>
