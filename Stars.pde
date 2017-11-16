public class Stars {//note that this class does NOT extend Floate
  public void show(){
    fill(255,255,255);
    noStroke();
    ellipse((float)Math.random()*500,(float)Math.random()*500,1,1);
  }
}
