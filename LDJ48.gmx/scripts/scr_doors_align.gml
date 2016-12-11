///scr_doors_align(door_no,cell_into)

doorno = argument0
cell_into = argument1

//get the door number of the opposite door
collarary = scr_door_collarary(doorno)

if(obj_cont_cell.arr_doors[cell_into,collarary] == 1){ //check if there is a door in the oppostie location in the next cell
    return true
}

return false

/*
var west = door_no-1
var east = door_no+1
var north = door_no+6
var south = door_no-6


//check that those aren't returning out of bounds data
if(0<=west<=35 && 0<=east<=35 && 0<=north<=35 && 0<=south<=35) {
    // check it's actually beside
    if(east == cell_into) {
        // going right/east
        return collarary
    }
    if(west == cell_into) {
        return collarary
    }
    if(north == cell_into) {
        return collarary
    }
    if(south == cell_into) {
        return collarary
    }
    else {
        return false
    }
}

