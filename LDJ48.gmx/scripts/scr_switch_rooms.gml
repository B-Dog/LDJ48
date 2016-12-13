///scr_switch_rooms(cellno,heldkey)

var cellno = argument0
var heldkey  = argument1


var ax = ds_grid_value_x(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, cellno)
var ay = ds_grid_value_y(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, cellno)
var bx = ds_grid_value_x(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, heldkey)
var by = ds_grid_value_y(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, heldkey)


//show_message('switch values = '+string(heldkey)+' '+string(cellno))

obj_cont_cell.ds_gr_map[# ax,ay] = heldkey
obj_cont_cell.ds_gr_map[# bx,by] = cellno

/*
obj_cont_cell.arr_locations[cellno,0] = bx
obj_cont_cell.arr_locations[cellno,1] = by
obj_cont_cell.arr_locations[heldkey,0] = ax
obj_cont_cell.arr_locations[heldkey,1] = ay

/*
show_message('map at '+string(ax)+' '+string(ay)+' = '+string(obj_cont_cell.ds_gr_map[ax,ay]))
show_message('map at '+string(bx)+' '+string(by)+' = '+string(obj_cont_cell.ds_gr_map[bx,by]))

