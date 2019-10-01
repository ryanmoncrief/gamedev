using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameControl : MonoBehaviour
{
    public static GameControl instance;

    //for the score UI
    public Text DistanceText;
    private int score = 0;

    //for the dead state
    public static bool isDead = false;
    public GameObject GameOverText;
   
    //For the ground Check
    public static bool grounded = false;

    //For the teleported State
    public static bool ported = true;

    //ground check
    public static void isGrounded()
    {
        grounded = true;
        ported = false;
    }

    //Game Over UI and Restart
    public void gameOver ()
    {
        GameOverText.SetActive (true);
        isDead = true;
    }


    void Awake ()
    {
        if (instance == null)
            instance = this;

        else if (instance != this)
            Destroy(gameObject);
        
}

    // Update is called once per frame
    void Update()
    {
        if ((isDead == true) && Input.GetMouseButtonDown(1))
        {
           SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
            isDead = false;
        }
        
        score = (int) Time.timeSinceLevelLoad;
        ScoreCounter();

    }
    public void ScoreCounter()
    {
        if (isDead == true)
            return;
        DistanceText.text = "Distance: " + score.ToString();
    }
}
