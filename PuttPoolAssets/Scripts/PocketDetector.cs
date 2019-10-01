using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PocketDetector : MonoBehaviour {

    public Rigidbody eightBall;
    public QueBall queball;
    public EightBall winBall;

    // Use this for initialization
	void Start ()
    {
        queball = GetComponent<QueBall>();
        winBall = GetComponent<EightBall>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    
        	
	}

    public void OnCollisionEnter(Collision col)
    {
        print("Colldied");
        if(col.gameObject.name == "Que Ball")
        {
            queball.Scratch();
        }

        if(col.gameObject.name == "Eight Ball")
        {
            winBall.Win();
        }
    }
}
