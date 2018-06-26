<?php
require_once 'IAU.php';

class EVA{
  public $eva_id;
  public $eva_name;
  public $eva_img_link;
  public $iaus = [];

  public function FillFromDatabase($eva_id, $conn){
    $sql = "SELECT * FROM eva WHERE eva.id = '$eva_id'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result)>0) {//if found an eva with matching id
      $row = mysqli_fetch_assoc($result); //should only be one or no result
      $this->eva_id = $row['id'];
      $this->eva_name = $row['name'];
      $this->eva_img_link = $row['img_link'];

      $sql = "SELECT * FROM direct WHERE direct.eva_id = '$eva_id'";
      $result = mysqli_query($conn, $sql);

      //find all iau id's assosiated with this eva
      $sql = "SELECT * FROM iau WHERE iau.eva_id = '$eva_id'";
      $result = mysqli_query($conn, $sql);

      if(mysqli_num_rows($result)>0){//fill iaus with filled iau
        while($row = mysqli_fetch_assoc($result)){
          $iau = new IAU;
          $iau->FillFromDatabase($row['id'], $conn);
          array_push($this->iaus, $iau);
        }
      }
    }
    else{
      echo "no matching eva with id" . $eva_id;
    }
  }
}
