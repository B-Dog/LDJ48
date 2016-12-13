ds_gr_map = ds_grid_create(36,36) //create the map grid

arr_doors[0,0] = 0 //this needs to be 36 X 12 and holds the valid doorways for each cell
for(var i = 0; i<36; i++) {
    for(var ii = 0; ii<12; ii++) {
        if(i=0){arr_doors[i,ii] = 1} else {arr_doors[i,ii] = 0}
    }
}

/*
arr_locations[0,0] = 0 //2d array that holds x,y of cell in ds_gr_map with index == cellno
for(var i = 0; i<36; i++) {
    arr_locations[i,0] = -1
    arr_locations[i,1] = -1
}
*/

ds_gr_reveal = ds_grid_create(36, 36)
ds_gr_reveal[# 0,1] = 1  // origin always revealed
for(var i=0; i<36; i++) {
    for(var ii=2; ii<35; ii++) {
        ds_gr_reveal[# i, ii] = -1
    }
}
