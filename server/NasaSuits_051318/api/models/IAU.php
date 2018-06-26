<?php

require_once __DIR__."/IU.php";

class IAU
{
    var $iau_id;
    var $iau_step;
    var $iau_sub_step;
    var $iau_high_level_action;
    var $iau_site_of_action;
    var $iau_task_of_action;
    var $iau_confirm_level;
    var $iau_next_step;
    var $iau_backup_step;
    var $iau_caution_level;
    var $iau_caution;
    var $iau_completed;
    var $iau_eva_id;
	var $iau_preemption_level;
    var $iau_locked;
    var $iau_ius = [];

    //precondition: passed database sql connecton
    public function FillFromDatabase($newiau_id, $conn){
      $sql = "SELECT * FROM iau WHERE iau.id = '$newiau_id'";
      $result = mysqli_query($conn, $sql);

      if (mysqli_num_rows($result)>0) {//if found an iau with matching id
        $row = mysqli_fetch_assoc($result); //should only be one or no result
        $this->iau_id = $row['id'];
        $this->iau_step = $row['step'];
        $this->iau_sub_step = $row['sub_step'];
        $this->iau_high_level_action = $row['high_level_action'];
        $this->iau_site_of_action = $row['site_of_action'];
        $this->iau_task_of_action = $row['task_of_action'];
        $this->iau_confirm_level = $row['confirm_level'];
        $this->iau_next_step = $row['next_step'];
        $this->iau_backup_step = $row['backup_step'];
        $this->iau_caution_level = $row['caution_level'];
        $this->iau_caution = $row['caution'];
        $this->iau_completed = $row['completed'];
        $this->iau_eva_id = $row['eva_id'];
		$this->iau_preemption_level = $row['preemption_level'];
		$this->iau_locked = $row['locked'];
          

        //FILL IUS
        $sql = "SELECT * FROM iu WHERE iu.iau_id = '$newiau_id'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $iu = new IU($row['id'], $row['link'], $row['type'], $row['iau_id'], $row['position'], $row['rotation'], $row['scale'], $row['space']);
                array_push($this->iau_ius, $iu);
            }
        }
      }
      else{
        echo "no result";
      }
    }
	
	public function FillFromDatabaseByEvaIdAndStep($eva_id, $step, $conn){
      $sql = "SELECT * FROM iau WHERE eva_id = $eva_id AND step = $step ORDER BY sub_step ASC LIMIT 1";
      $result = mysqli_query($conn, $sql);

      if (mysqli_num_rows($result)>0) {//if found an iau with matching id
        $row = mysqli_fetch_assoc($result); //should only be one or no result
        $this->iau_id = $row['id'];
        $this->iau_step = $row['step'];
        $this->iau_sub_step = $row['sub_step'];
        $this->iau_high_level_action = $row['high_level_action'];
        $this->iau_site_of_action = $row['site_of_action'];
        $this->iau_task_of_action = $row['task_of_action'];
        $this->iau_confirm_level = $row['confirm_level'];
        $this->iau_next_step = $row['next_step'];
        $this->iau_backup_step = $row['backup_step'];
        $this->iau_caution_level = $row['caution_level'];
        $this->iau_caution = $row['caution'];
        $this->iau_completed = $row['completed'];
        $this->iau_eva_id = $row['eva_id'];
		$this->iau_preemption_level = $row['preemption_level'];
        $this->iau_locked = $row['locked'];

        //FILL IUS
		$iau_id = $this->iau_id;
        $sql = "SELECT * FROM iu WHERE iu.iau_id = '$iau_id'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $iu = new IU($row['id'], $row['link'], $row['type'], $row['iau_id'], $row['position'], $row['rotation'], $row['scale'], $row['space']);
                array_push($this->iau_ius, $iu);
            }
        }
      }
      else{
        echo "no result";
      }
    }

}
