using UnityEngine;
using UnityEngine.UI;


public class VehiclePowerSwitch : MonoBehaviour
{
    Text value;
    GameObject sound_effect;
    public const string SOUND_EFFECT_COMPLETE = "TelemetrySounds/complete";

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
        /* value = transform.Find("value_position").transform.GetComponentInChildren<Text>();


         if (TelemetryController.battery_time_life_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.vehicle_power;
             value.text = "0";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.vehicle_power;
             value.text = TelemetryController.suitSwitch.vehicle_power;
             transform.GetComponent<Image>().color = Color.green;
         }
         if (TelemetryController.battery_capacity_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.vehicle_power;
             value.text = "0";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.vehicle_power;
             value.text = TelemetryController.suitSwitch.vehicle_power;
             transform.GetComponent<Image>().color = Color.green;
         }*/

        value = transform.Find("value_position").transform.GetComponentInChildren<Text>();
        string switchStatus = TelemetryController.suitSwitch.vehicle_power;


        value.text = TelemetryController.suitSwitch.vehicle_power;
        if (switchStatus == "true" || switchStatus == "1")
        {

            transform.GetComponent<Image>().color = Color.red;
            //PlaySoundEffect(SOUND_EFFECT_COMPLETE, true);

        }
        else
        {

            transform.GetComponent<Image>().color = Color.gray;

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

