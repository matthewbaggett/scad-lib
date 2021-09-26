module hexGrid(fillRatio=0.5, gridSize=10, height=1, center=false, rows=3, columns=4) {
    colMulti = 0.752;    
    rowMulti = 0.86;
    offset = [
        (gridSize*colMulti)*((columns-1)/2),
        (gridSize*rowMulti)*((rows-.5)/2),
        0] * -1;
    translate(offset){
        for(row= [0:rows-1]){
            translate([0,gridSize*row*rowMulti,0])
            for(col=[0:columns-1]){
                translate([gridSize*col*colMulti,col%2?(gridSize*rowMulti)/2:0,0])
                cylinder(h=height,d=gridSize*fillRatio, $fn=6, center=center);
            }
            
        }
    }
}

hexGrid(fillRatio=0.8, gridSize=10, height=10, center=false);