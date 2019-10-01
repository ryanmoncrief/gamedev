using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstaclePool : MonoBehaviour {

    
    public GameObject[] walls;
    
    public float spawnRate = 3f;

    
    private Vector2 obstaclePoolPosition = new Vector2(-15f, -25f);
    private float timeSinceLastSpawned;
    private float spawnXPosition = 20f;
    private float spawnYPosition = 1f;
    private int currentWall = 0;

	// Use this for initialization
	void Start ()
    {
        
           
        	
	}
	
	// Update is called once per frame
	void Update ()
    {
        timeSinceLastSpawned += Time.deltaTime;

        if (GameControl.isDead == false && timeSinceLastSpawned >= spawnRate)
        {
            timeSinceLastSpawned = 0;
            Vector2 pos = new Vector2(spawnXPosition, spawnYPosition);
            GameObject wallPrefab = walls[Random.Range(0, walls.Length)];
            Instantiate(wallPrefab, pos, transform.rotation);
        
            }
        }
	}

