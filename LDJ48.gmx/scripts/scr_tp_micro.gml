///scr_tp_micro(door_no)

var doorno = argument0

switch(doorno) {
    case 0:
        x+=24
        y+=504
        break
    case 1:
        x+=24
        y+=312
        break
    case 2:
        x+=24
        y+=120
        break
    case 3:
        x+=504
        y+=600
        break
    case 4:
        x+=312
        y+=600
        break
    case 5:
        y+=600
        x+=120
        break
    case 6:
        x+=600
        y+=120
        break
    case 7:
        x+=600
        y+=312
        break
    case 8:
        x+=600
        y+=504
        break
    case 9:
        y+=24
        x+=120
        break
    case 10:
        y+=24
        x+=312
        break
    case 11:
        y+=24
        x+=504
        break
}
x+=12
y+=12
