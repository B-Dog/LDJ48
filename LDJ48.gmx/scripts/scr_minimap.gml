///scr_minimap(cellno)
/*
var cellno = argument0

var gx = arr_locations[cellno,0]
var gy = arr_locations[cellno,1]

//gx = gx-2
//gy = gy-2

draw_set_colour(c_blue)

draw_rectangle(view_xview[0]+528,view_yview[0]+528,view_xview[0]+648,view_yview[0]+648,0)

draw_set_colour(c_white)

for(var i = 0; i<5; i++) {
    for(var ii = 0; ii<5; ii++) {
        if(ds_gr_map[# gx+i, gy+ii] != -1){
            if(ds_gr_reveal[# gx+i, gy+ii] == 1) {
                draw_rectangle(view_xview[0]+528+i*24,view_yview[0]+528+ii*24,view_xview[0]+528+i*24+24,view_yview[0]+528+ii*24+24,1)
            }
        }
    }
}
        
