///scr_move(cellno,doorno)

var cellno = argument0
var doorno = argument1
var cellinto = -1

var direc = floor(doorno/3) //what direction does the door go

var gx = 0 //loads of temp vars to hold dr_grid cords
var gy = 0
var nx = 0
var ny = 0


if(scr_gr_nei_valid(cellno,doorno)){

    gx = obj_cont_cell.arr_locations[cellno,0] //get the location of the current cell from the arr_loc
    gy = obj_cont_cell.arr_locations[cellno,1] 
    
    switch(direc) { //find the cords of the neighbouring cell in the direction supplied
        case 0:
            nx = gx+1
            ny = gy
            break
        case 1:
            nx = gx
            ny = gy+1
            break
        case 2:
            nx = gx-1
            ny = gy
            break
        case 3:
            nx = gx
            ny = gy-1
            break
    }        
    
    cellinto = obj_cont_cell.ds_gr_map[# nx, ny]
    show_message(cellinto)
    scr_tp_macro(cellinto)
    if(cellinto == 0) { scr_move_closet(doorno) } else { scr_tp_micro(doorno) }
    scr_move_view(cellinto)
    cell_id = cellinto
    
}
