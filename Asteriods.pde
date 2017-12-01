public class Asteriods extends Floater
{
  private int speedrotation;
  
  public Asteriods(){
    corners =4;
    int[]xS= {8,-16,-8,16};
    int[]yS= {8,8,-8,-8};
    xCorners =xS;
    yCorners =yS;
   myPointDirection =(int)(Math.random()*360)+1;
   myColor = color(251);
   myCenterX =(int)(Math.random()*500)+1;
   myCenterY = (int)(Math.random()*500)+1;
   myDirectionX = (int)(Math.random()*4)+1;
   myDirectionY = (int)(Math.random()*4)+1;
   myPointDirection += (int)(Math.random()*360)+1;
  }
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
