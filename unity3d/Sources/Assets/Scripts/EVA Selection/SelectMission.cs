using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Newtonsoft.Json;
using UnityEngine.SceneManagement;
using System;

public class SelectMission : MonoBehaviour {

    private List<EVA> EVAList = new List<EVA>();
    private List<string> DropOptions = new List<string>();
    private Dropdown dropdown;

    // Use this for initialization
    void Start () {
        StartCoroutine(GetEVAList());
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private IEnumerator GetEVAList()
    {
        //create http handler with api for directions table
        string hostName = ConnectionController.HOST_NAME;
        string url = "http://" + hostName + "/NasaSuits/api/eva/GetEVA.php";
        //Debug.Log(url);
        WWW response = new WWW(url);
        yield return response;
        try
        {
            EVAList = JsonConvert.DeserializeObject<List<EVA>>(response.text);
        }catch(Exception e)
        {
            Debug.Log(response.text);
            Debug.Log(e);
        }
        foreach(EVA evaelement in EVAList)
        {
            DropOptions.Add(evaelement.eva_id + ": " + evaelement.eva_name);
            Debug.Log(evaelement.eva_id + ": " + evaelement.eva_name);
        }
        
        UpdateAvailableEVAs();
    }

    private void UpdateAvailableEVAs()
    {
        GameObject EVAList = GameObject.Find("Dropdown");
        dropdown = EVAList.GetComponent<Dropdown>();
        dropdown.ClearOptions();
        dropdown.AddOptions(DropOptions);
    }

    public void LoadScene()
    {
        ConnectionController.CurrentEVA = EVAList[dropdown.value].eva_id;
        SceneManager.LoadScene("IAUPresenter", LoadSceneMode.Single);
    }

}
