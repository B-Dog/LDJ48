///scr_doors_align(door_no,cell_into)

doorno = argument0
cell_into = argument1

//get the door number of the opposite door
var collarary = -1
switch(door_no) {
    case 0:
        collarary = 8
        break
    case 1:
        collarary = 7
        break
    case 2:
        collarary = 6
        break
    case 3:
        collarary = 11
        break
    case 4:
        collarary = 10
        break
    case 5:
        collarary = 9
        break
    case 6:
        collarary = 2
        break
    case 7:
        collarary = 1
        break
    case 8:
        collarary = 0
        break
    case 9:
        collarary = 5
        break
    case 10:
        collarary = 4
        break
    case 11:
        collarary = 3
        break
}

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

