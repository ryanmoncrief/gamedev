using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RunnerHero : MonoBehaviour
{
    public float gravityModifier = 2f;
    public float upForce = 1.5f;

    public Vector2 pointOfContact;
   

    private Rigidbody2D rb2d;
    private Animator anim;

	// Use this for initialization
	void Start ()
    {
        rb2d = GetComponent<Rigidbody2D> ();
        anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (GameControl.isDead == false)
        {
            {
                if (Input.GetMouseButtonDown(0) && (GameControl.grounded == true))
                {
                    rb2d.velocity = Vector2.zero;
                    rb2d.AddForce(new Vector2(0, upForce));
                    GameControl.grounded = false;
                    anim.SetTrigger("Jump");
                }   
             }
                if (Input.GetMouseButtonDown(1) && (GameControl.ported == false))
                {
                    rb2d.velocity = Vector2.zero;
                    rb2d.transform.position = new Vector2(0, transform.position.y + 6);
                    GameControl.ported = true;
                    GameControl.grounded = false;
                anim.SetTrigger("Warp");
                }
            }
        if (GameControl.ported == true)
        {
            rb2d.gravityScale = 2;
        }
    }
    void OnCollisionEnter2D(Collision2D coll)
    {
        if (coll.gameObject.tag == "ground")
        {
            GameControl.isGrounded();
            anim.SetTrigger("Land");
        }
        else if (coll.gameObject.tag == "wall")
        {
            pointOfContact = coll.contacts[0].normal;
            if (pointOfContact == new Vector2(-1,0))
            {
                GameControl.instance.gameOver();
            }
            if (pointOfContact == new Vector2(0,1))
            {
                rb2d.velocity = Vector2.zero;
                GameControl.isGrounded();
                anim.SetTrigger("Land");
            }
        }
      }
	}
