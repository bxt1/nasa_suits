﻿using UnityEngine;
using UnityEngine.UI;


public class VentErrorSwitch : MonoBehaviour
{
    Text value;
    GameObject sound_effect;
    public const string SOUND_EFFECT_COMPLETE = "TelemetrySounds/complete";

    //  public static Color CRITICAL_BACKGROUND_COLOR = Color.red;
    // GameObject heart_rate_obj;

    //GameObject external_environment_pressure_obj;



    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
    public void UpdateValue(int contrast_idx)
    {
        /*value = transform.Find("value_position").transform.GetComponentInChildren<Text>();
         if(TelemetryController.fan_speed_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.vent_error;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.vent_error;
             value.text = TelemetryController.suitSwitch.vent_error;
             transform.GetComponent<Image>().color = Color.gray;
         }*/
        value = transform.Find("value_position").transform.GetComponentInChildren<Text>();
        string switchStatus = TelemetryController.suitSwitch.vent_error;


        value.text = TelemetryController.suitSwitch.vent_error;
        if (switchStatus == "true" || switchStatus == "1")
        {

            transform.GetComponent<Image>().color = Color.red;
            //PlaySoundEffect(SOUND_EFFECT_COMPLETE, true);

        }
        else
        {

            transform.GetComponent<Image>().color = Color.grey;

        }


    }
    private void PlaySoundEffect(string sound_file, bool loop)
    {
        GameObject teleCtrlObj = GameObject.FindGameObjectWithTag("telemetry_controller");
        if (teleCtrlObj != null)
        {
            TelemetryController teleCtrlScr = teleCtrlObj.GetComponent<TelemetryController>();
            teleCtrlScr.PlaySoundEffect(sound_file, loop);
        }
    }
}
