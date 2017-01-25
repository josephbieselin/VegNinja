// randomize the seed
randomize();

// this variable will be used at the start of new games to set the "lives" global
global.Lives = 3;

// total number of sprites for vegetables
global.numVeg = 7;

switch (global.difficulty)
    {
    
    // global variables for when a veg is created for slicing
    // Gravity: how much gravity affects the veg
    // verticalPushMin: minimum amount the veg will be launched into view
    // verticalPushMax: maximum amount the veg will be launched into view
    
    case "Easy":    
        global.Gravity = 0.4
        global.verticalPushMin = -20;
        global.verticalPushMax = -25;
        break;
        
    case "Medium":
        global.Gravity = 0.65
        global.verticalPushMin = -28;
        global.verticalPushMax = -37;
        break;
            
    case "Hard":
        global.Gravity = 0.9
        global.verticalPushMin = -33;
        global.verticalPushMax = -41;
        break;
    }

global.spawnMin = 1;
global.spawnMax = global.numVeg / 2 + 1;

global.badCount = irandom_range(1, 3);
global.goodCount = global.numVeg - global.badCount;


// Update lists for goodVeg & badVeg

global.goodVeg = ds_list_create();
global.badVeg = ds_list_create();

ds_list_add(global.goodVeg, sprBrocolli, sprCarrot, sprOnion, sprPepper, sprSpringOnion, sprPotato, sprCorn);

var tempPos = noone;

for (i = 0; i < global.badCount; i += 1)
    {
    // get a temporary position to remove from goodVeg and add to badVeg
    tempPos = irandom_range(0, ds_list_size(global.goodVeg)-1);
    
    // add the value at the temporary position of goodVeg to badVeg 
    ds_list_add(global.badVeg, global.goodVeg[| tempPos]);
    
    // remove the value at the temporary position from goodVeg
    ds_list_delete(global.goodVeg, tempPos);
    }
