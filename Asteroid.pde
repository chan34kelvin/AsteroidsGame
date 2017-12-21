public class Asteroid extends Floater
{
  private int speedrotation;
  
  public Asteroid(){
    fill(255,255,0);
    corners =9;
    fill(255,0,0);
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = 0;
    xCorners[1] = -10;
    yCorners[1] = -20;
    xCorners[2] = 5;
    yCorners[2] = -20;
    xCorners[3] = 20;
    yCorners[3] = 0;
    xCorners[4] = 10;
    yCorners[4] = 20;
    xCorners[5] = -10;
    yCorners[5] = 15;
    xCorners[6] = -20;
    yCorners[6] = 0;
    xCorners[7] = -10;
    yCorners[7] = 15;
    xCorners[8] = -20;
    yCorners[8] = 0;
    myPointDirection =(int)(Math.random()*360)+1;
    myColor = color(244,200,0);
    setX((int)(Math.random()*500)+2);
    setDirectionX ( (int)(Math.random()*4)-2);
    setY((int)(Math.random()*500)+2);
    setDirectionY ( (int)(Math.random()*4)-2);
    //myCenterX =(int)(Math.random()*500)+1;
    //myCenterY = (int)(Math.random()*500)+1;
    //myDirectionX = (int)(Math.random()*4)+1;
    //myDirectionY = (int)(Math.random()*4)+1;
    //myPointDirection += (int)(Math.random()*360)+1;
  }
  // public void show(){
  //  stroke(250,0,50);
  //  fill(25,25,25);
  //  strokeWeight(3);
  //}
  public void move(){
  turn(rotSpeed);
  super.move();
  }
    private int rotSpeed=(int)(Math.random()*6)-2;
    public void setX(int x) {myCenterX = x;}
    public int getX(){return (int) myCenterX;}
    public void setY(int y) {myCenterY = y;}
    public int getY(){return (int) myCenterY;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees)  {myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    
    
}
