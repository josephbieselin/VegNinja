// randomize the seed
randomize();

global.Lives = 3;

// total number of sprites for vegetables
global.numVeg = 7;

global.spawnMin = 1;
global.spawnMax = global.numVeg / 2 + 1;

global.badCount = irandom_range(1, global.numVeg - 1);
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
