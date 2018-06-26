using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class ConnectionController
{

    public static string CurrentEVA = "74";
    public const string HOST_NAME_PRIMARY = "130.101.92.77";
    public const string HOST_NAME_NASA_SERVER = "192.88.41.226";//"192.88.41.147";
    public const string HOST_NAME_BACKUP = "192.168.1.117";//"192.168.1.117";
    public const string HOST_NAME_Cynth_BACKUP = "192.168.43.228";//server kyles phone  192.168.43.204
    public static string HOST_NAME_UNRECHABLE = "UNREACHABLE";
    public static string HOST_NAME = HOST_NAME_PRIMARY;

    //    public static string TelemetrySuitServerNasa = "https://exploration-mission-1.herokuapp.com/api/suit/recent";
    //    public static string TelemetrySuitSwitchServerNasa = "https://exploration-mission-1.herokuapp.com/api/suitswitch/recent";
    public static string TelemetrySuitServerNasa = "http://" + HOST_NAME + "/NasaSuits/api/Tele/GetTele.php?RespSize=1";
    public static string TelemetrySuitSwitchServerNasa = "http://" + HOST_NAME + "/NasaSuits/api/Tele/GetSwitches.php?RespSize=1";

    // Use this for initialization

}
