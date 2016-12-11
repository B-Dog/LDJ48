///scr_gr_nei_valid(cellno,doorno)

var cellno = argument0
var doorno = argument1
var direc = floor(doorno/3) //what direction does the door go

var gx = 0 //loads of temp vars to hold dr_grid cords
var gy = 0
var nx = 0
var ny = 0

gx = obj_cont_cell.arr_locations[cellno,0] //get the location of the current cell from the arr_loc
gy = obj_cont_cell.arr_locations[cellno,1] 

switch(direc) { //find the cords of the neighbouring cell in the direction supplied
    case 0:
        nx = gx+1
        ny = gy
        break
    case 1:
        nx = gx
        ny = gy-1
        break
    case 2:
        nx = gx-1
        ny = gy
        break
    case 3:
        nx = gx
        ny = gy=1
        break
}




if(obj_cont_cell.ds_gr_map[# nx, ny] != -1) { // if the cell isnt empty
    show_message(obj_cont_cell.ds_gr_map[# nx, ny])
    if(scr_doors_align(doorno, obj_cont_cell.ds_gr_map[# nx, ny])) { //if the doors line up
        return true //you can ship it
    }    
}

return false //the cannon sinks it
