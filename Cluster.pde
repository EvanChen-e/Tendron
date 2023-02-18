 private double scale = 2.0;
    private double angle1 = 15;
     double angle2 = 15;
     double treeSize = 0;
    public void setup() {
      background(#64F7DB);
      size(400,400);
    }
    public  void draw() {
      fill(#64F7DB);
      rect(0,0,400,400);
      stroke(#2AED00);
      drawTree(200, 400, 270, treeSize);
      treeSize+=0.05;
      if(treeSize>18){
       treeSize=0; 
      }
    }
     public void drawTree(int x, int y, double angle, double len) {
        if (len <= 5){
          return;
        }
        //double angleRadians = Math.toRadians(angle);
        double angleRadians = angle*(Math.PI/180);
        int x2 = x+(int)(Math.cos(angleRadians)*len*scale);
        int y2 = y+(int)(Math.sin(angleRadians)*len*scale);
        line(x, y, x2, y2);
        drawTree(x2, y2, angle-angle1, len-1);
        drawTree(x2, y2, angle+angle2, len-1);
    }
