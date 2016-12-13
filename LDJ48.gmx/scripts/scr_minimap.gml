///scr_minimap(cellno)

var cellno = argument0

var gx = ds_grid_value_x(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, cellno)
var gy = ds_grid_value_y(obj_cont_cell.ds_gr_map, 0, 0, 36, 36, cellno)

var i = 0
var ii = 0
var e = 5
var ee = 5

gx = gx-2
gy = gy-2

if(gx=-2) {gx = 0; e = 3}
if(gx=-1) {gx = 0; e = 4}
if(gy=-2) {gy = 0; ee = 3}
if(gy=-1) {gy = 0; ee = 4}
if(gx>30) {gx=30}
if(gy>30) {gy=30}

draw_set_colour(c_blue)

draw_rectangle(view_xview[0]+528,view_yview[0]+528,view_xview[0]+648,view_yview[0]+648,0)

draw_set_colour(c_white)

for(i = 0; i<e; i++) {
    for(ii = 0; ii<ee; ii++) {
        if(ds_gr_map[# gx+i, gy+ii] != -1){
            draw_rectangle(view_xview[0]+528+i*24+((5-e)*24),view_yview[0]+528+ii*24+((5-ee)*24),view_xview[0]+528+i*24+24+((5-e)*24),view_yview[0]+528+ii*24+24+((5-ee)*24),1)
            draw_text(view_xview[0]+528+i*24+((5-e)*24)+6,view_yview[0]+528+ii*24+((5-ee)*24)+6,ds_gr_map[# gx+i,gy+ii])
        }
    }
} 

draw_set_colour(c_black)      
