public class Bullet extends Floater
{
    public Bullet(Spaceship theShip){
    myPointDirection=theShip.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    //green b
    myColor = color(100,200,0);
    myCenterX= theShip.getX();
    myCenterY= theShip.getY();
    setDirectionX(5 * Math.cos(dRadians)+theShip.getDirectionX());
    setDirectionY(5 * Math.sin(dRadians)+theShip.getDirectionY());
    
  }
  public void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myCenterX,(float)myCenterY,3,3);
}
public void move()
{
   myCenterX += myDirectionX;    
   myCenterY += myDirectionY;     
}

   public void setX(int x) {myCenterX = x;}
   public int getX(){return (int) myCenterX;}
   public void setY(int y) {myCenterY = y;}
   public int getY(){return (int) myCenterY;}
   public void setDirectionX(double x) {myDirectionX = x;}
   public double getDirectionX(){return myDirectionX;}
   public void setDirectionY(double y) {myDirectionY = y;}
   public double getDirectionY(){return myDirectionY;}
   public void setPointDirection(int degrees){myPointDirection = degrees;}
   public double getPointDirection(){return myPointDirection;}
}
