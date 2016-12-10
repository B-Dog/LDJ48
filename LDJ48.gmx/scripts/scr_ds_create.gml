ds_gr_map = ds_grid_create(36,36) //create the map grid

arr_doors[0,0] = 0 //this needs to be 36 X 12 and holds the valid doorways for each cell
for(var i = 0; i<36; i++) {
    for(var ii = 0; ii<12; ii++) {
        arr_doors[i,ii] = 0
    }
}

arr_locations[0,0] = 0 //2d arrayb that holds x,y of cell in ds_gr_map with index == cellno
for(var i = 0; i<36; i++) {
    arr_locations[i,0] = -1
    arr_locations[i,1] = -1
}
