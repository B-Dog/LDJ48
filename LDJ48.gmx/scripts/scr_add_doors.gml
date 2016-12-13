///scr_tp_micro()

for(var i = 0; i<36; i++) {
    for(var ii = 0; ii<36; ii++) {
        if(ds_gr_map[# i,ii]>0) {
            for(var iii = 0; iii<12; iii++) {            
                if(arr_doors[ds_gr_map[# i,ii],iii] = 1){
                    var cellno = ds_gr_map[# i,ii]
                    var iv = 0
                    while(cellno>5){iv++; cellno-=6}
                    
                    ni = instance_create(cellno*648,iv*648,obj_door)
                    ni.pos = iii
                    
                    switch(iii) {
                        case 0:
                            ni.x += 624
                            ni.y += 504
                            break
                        case 1:
                            ni.x += 624
                            ni.y += 312
                            break
                        case 2:
                            ni.x += 624
                            ni.y += 120
                            break
                        case 3:
                            ni.x += 504 
                            ni.y += 0
                            break
                        case 4:
                            ni.x += 312
                            ni.y += 0
                            break
                        case 5:
                            ni.x += 120
                            ni.y += 0
                            break
                        case 6:
                            ni.x += 0 
                            ni.y += 120
                            break
                        case 7:
                            ni.x += 0 
                            ni.y += 312
                            break
                        case 8:
                            ni.x += 0 
                            ni.y += 504
                            break
                        case 9:
                            ni.x += 120 
                            ni.y += 624
                            break
                        case 10:
                            ni.x += 312 
                            ni.y += 624
                            break
                        case 11:
                            ni.x += 504
                            ni.y += 624
                            break
                        }
                }
            }
        }
    }
}

