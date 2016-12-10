///scr_tp_macro(cell_no)

var cellno = argument0
var i = 0

while(cellno>5){ //work out the row that the cell is in and the left over is the coloumn
    i++
    cell-=6
}

x = cellno*648 // move to the corner of the cell so that tp_micro can do the fine adjustments
y = i*648
