using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class QueBall : MonoBehaviour
{
    public Rigidbody queBall;
    public GameObject poolCue;
    public Transform fireTransform;

    public Slider aimSlider;
    public float minLaunchForce = 10f;
    public float maxLaunchForce = 30f;
    private float currentLaunchForce;
    private float chargeSpeed;
    public float maxChargeTime = 10f;

    private bool fired;
    private bool ballReset;

    public int shotsFired = 0;
    public Text messageText;
    public Text startupText;

    private void OnEnable()
    {
        currentLaunchForce = minLaunchForce;
        aimSlider.value = minLaunchForce;
    }

	// Use this for initialization
	void Start ()
    {
        chargeSpeed = (maxLaunchForce - minLaunchForce) / maxChargeTime;
        startupText.text = " ";
	}
	
	// Update is called once per frame
	private void Update ()
    {
        aimSlider.value = currentLaunchForce;

        if (queBall.velocity.magnitude < .5 && !ballReset && fired == true)
        {
            fired = false;
            ballReset = true;
        }
        else if (queBall.velocity == Vector3.zero && ballReset == true)
        {
            Respawn();
        }

        if(currentLaunchForce > maxLaunchForce && !fired)
        {
            currentLaunchForce = maxLaunchForce;
            Fire();
        }
         else if (Input.GetMouseButton(0) && !fired)
        {
            currentLaunchForce += chargeSpeed * Time.deltaTime;

            aimSlider.value = currentLaunchForce;
        }
		else if (Input.GetMouseButtonUp(0) && !fired)
        {
            Fire();
        }
        if (Input.GetKey("left") && queBall.velocity.magnitude < .1)
        {
            transform.Rotate(0, 3, 0);
        }
        if (Input.GetKey("right") && queBall.velocity.magnitude < .1)
        {
            transform.Rotate(0, -3, 0);
        }
        
	}
    private void Fire()
    {
        fired = true;

        queBall.velocity = currentLaunchForce * fireTransform.forward;

        currentLaunchForce = minLaunchForce;

        poolCue.SetActive(false);

        shotsFired++;
        ShotCounter();
    } 
    private void Respawn()
    {
        transform.rotation = Quaternion.identity;

        poolCue.SetActive(true);
        ballReset = false;
    }

    public void Scratch()
    {
        transform.position = new Vector3(0, 0, 0);
        queBall.velocity = Vector3.zero;
        shotsFired++;

        Respawn();
    }

    public void ShotCounter()
    {
        messageText.text = "Shots: " + shotsFired.ToString();
    }
}
