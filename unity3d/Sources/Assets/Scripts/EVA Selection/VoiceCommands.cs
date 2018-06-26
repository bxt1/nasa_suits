using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VoiceCommands : MonoBehaviour {

    public GameObject evaSphereSpace;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void CenterView()
    {
        transform.SetParent(evaSphereSpace.transform);
        transform.position = Camera.main.transform.position + Camera.main.transform.forward * 2;
        Debug.Log("Move the main view to center position");
        transform.rotation = Quaternion.LookRotation(transform.position - Camera.main.transform.position);

        //float rotate_z = transform.eulerAngles.z;
        //transform.Rotate(Vector3.forward, Camera.main.transform.eulerAngles.z - rotate_z);

        //PlaySoundEffect(TelemetryController.SOUND_EFFECT_COMPLETE, false);
    }
}
