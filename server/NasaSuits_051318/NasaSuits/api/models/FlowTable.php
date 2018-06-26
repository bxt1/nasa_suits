<?php
class Flowtable
{
    public $id;
    public $current_iau_id;
	public $future_iau_id;
	public $eva_id;
    

    function __construct($id, $current_iau_id, $future_iau_id, $eva_id)
	{
		$this->id = $id;
		$this->current_iau_id = $current_iau_id;
		$this->future_iau_id = $future_iau_id;
		$this->eva_id = $eva_id;
	}

}
