///scr_gr_nei_valid(cellno,doorno)

var cellno = argument0
var doorno = argument1
var direc = floor(doorno/4)

var gx = 0
var gy = 0
var nx = 0
var ny = 0

gx = obj_cont_cell.arr_locations[cellno,0]
gy = obj_cont_cell.arr_locations[cellno,1]

switch(direc) {
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

if(obj_cont_cell.ds_gr_map[# nx, ny] != -1) {
    if(scr_doors_align(doorno, obj_cont_cell.ds_gr_map[# nx, ny])) {
        return true
    }    
}

return false
