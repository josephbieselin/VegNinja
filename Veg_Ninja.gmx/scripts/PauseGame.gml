if (lives <= 0)
{
    exit;
}

// Toggle pause state
global.pause = !global.pause;

// Pause the game
if (global.pause)
{
    // create an instance of the Resume Button
    instance_create(room_width / 2, room_height - 90, objButtonResume);
    
    // pause all game objects
    with (objVeg)
    {
        pauseHspeed  = hspeed;
        pauseVspeed  = vspeed;
        pauseGravity = gravity;
        hspeed  = 0;
        vspeed  = 0;
        gravity = 0;
    }
    
    with (objVegSplit)
    {
        pauseHspeed  = hspeed;
        pauseVspeed  = vspeed;
        pauseGravity = gravity;
        hspeed  = 0;
        vspeed  = 0;
        gravity = 0;
    }
}

// Resume the game
else
{
    // destroy all other game objects to leave a blank room
    with (objVeg)
    {
        instance_destroy();
    }
    
    with (objVegSplit)
    {
        instance_destroy();
    }
}

