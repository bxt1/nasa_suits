<?php
class IU
{
    var $iu_id;
    var $iu_link;
    var $iu_type;
    var $iau_id;
	var $iu_position;
	var $iu_rotation;
	var $iu_scale;
	var $iu_space;
    

    function __construct($iu_id, $iu_link, $iu_type, $iau_id, $iu_position, $iu_rotation, $iu_scale, $iu_space)
    {
        $this->iu_id = $iu_id;
        $this->iu_link = $iu_link;
        $this->iu_type = $iu_type;
		$this->iau_id = $iau_id;
		$this->iu_position = $iu_position;
		$this->iu_rotation = $iu_rotation;
		$this->iu_scale = $iu_scale;
		$this->iu_space = $iu_space;
    }
}
