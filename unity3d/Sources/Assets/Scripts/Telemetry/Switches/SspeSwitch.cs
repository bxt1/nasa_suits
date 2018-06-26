using UnityEngine;
using UnityEngine.UI;


public class SspeSwitch : MonoBehaviour
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
         if (TelemetryController.external_environment_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         }
         if (TelemetryController.H2O_gas_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         }
         if (TelemetryController.H2O_liquid_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         }

         if (TelemetryController.internal_suit_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         }
         if (TelemetryController.oxygen_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         }
         if (TelemetryController.secondary_oxygen_pressure_critical == true)
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = "1";
             transform.GetComponent<Image>().color = Color.red;
         }
         else
         {
             string switchStatus = TelemetryController.suitSwitch.sspe;
             value.text = TelemetryController.suitSwitch.sspe;
             transform.GetComponent<Image>().color = Color.gray;
         } */
        value = transform.Find("value_position").transform.GetComponentInChildren<Text>();
        string switchStatus = TelemetryController.suitSwitch.sspe;


        value.text = TelemetryController.suitSwitch.sspe;
        /*
        Debug.Log("SwitchStatus: " + switchStatus);
        Debug.Log("PressureCrit: " + TelemetryController.external_environment_pressure_critical);
        Debug.Log("SecondaryCrit: " + TelemetryController.secondary_oxygen_pressure_critical);
        Debug.Log("H20LiquidPressCrit: " + TelemetryController.H2O_liquid_pressure_critical);
        Debug.Log("h20GasCrit: " + TelemetryController.H2O_gas_pressure_critical);
        Debug.Log("internalSuitspressCrit: " + TelemetryController.internal_suit_pressure_critical);
        Debug.Log("OxPressCrit: " + TelemetryController.oxygen_pressure_critical);
        */



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
