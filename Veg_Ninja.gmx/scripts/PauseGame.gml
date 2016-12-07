
// Toggle pause state
global.pause = !global.pause;

// Pause the game
if (global.pause)
{
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
    with (objVeg)
    {
        hspeed  = pauseHspeed;
        vspeed  = pauseVspeed;
        gravity = pauseGravity;
    }
    
    with (objVegSplit)
    {
        hspeed  = pauseHspeed;
        vspeed  = pauseVspeed;
        gravity = pauseGravity;
    }
}

