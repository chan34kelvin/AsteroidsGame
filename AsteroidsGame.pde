Spaceship ship= new Spaceship();
Stars[] stars = new Stars[100];
Asteriods [] ast= new Asteriods [20];
boolean move, rotateRight, rotateLeft, hyperspace;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

public void setup(){
 size(500, 500);
 for(int i=0;i<stars.length;i++){ stars[i] = new Stars(); }
 for(int r=0;r<ast.length;r++){ ast[r] = new Asteriods(); }
}
public void draw()
{
  background(0);
  for(int i=0;i<stars.length;i++) { stars[i].show(); }
  for(int r=0;r<ast.length;r++){ 
  ast[r].move();
  ast[r].show();}
  ship.show();
  if(right){
   ship.myCenterX += 6;
  }
  if(left){
   ship.myCenterX -= 6;
  }
  if(up){
   ship.myCenterY -= 6;
  }
  if(down){
   ship.myCenterY += 6;
  }
  if(ship.myCenterX<=9){
    ship.myCenterX=489;
  }
  if(ship.myCenterX>=490){
    ship.myCenterX=9;
  }
   if(ship.myCenterY<=9){
    ship.myCenterY=489;
  }
  if(ship.myCenterY>=490){
    ship.myCenterY=9;
  }
  
  //if(move){ 
  //  ship.move();
  //  ship.accelerate(0.05);
  //}
  if(rotateRight){ship.turn(6);}
  if(rotateLeft){ship.turn(-6);}
  if(hyperspace){
    fill(0);
    noStroke();
    rect(0,0,1000,1000);
    for(int i=0;i<200;i++){
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      ellipse(250,250,(float)(Math.random()*700),(float)(Math.random()*700));
    }
  }
}
public void keyPressed()
{
   if (key=='w') {up = true; }
   if (key=='d'){right = true;}
   if (key=='a'){left = true;}
   if (key=='s'){down = true;}
   
   if (key=='f'){rotateRight = true;}
   if (key=='z'){rotateLeft = true;}
   
   if (key=='h'){
     hyperspace=true;
     ship.setX((int)(Math.random()*500));
     ship.setY((int)(Math.random()*500));
     ship.setDirectionX(0);
     ship.setDirectionY(0);
     move=false;
   }
}
public void keyReleased(){
   if (key=='d'){right=false;}
   if (key=='a'){left=false;}
   if (key=='w'){up=false;}
   if (key=='s'){down=false;}
   
   if (key=='f'){rotateRight = false;}
   if (key=='z'){rotateLeft = false;}
   
   if (key=='h'){hyperspace=false;}
}
