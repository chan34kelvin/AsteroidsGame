Spaceship ship= new Spaceship();
Stars[] stars = new Stars[100];
//Asteroid [] ast= new Asteroid [20];
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();
ArrayList <Bullet> bullet2 = new ArrayList<Bullet>();
boolean move, rotateRight, rotateLeft, hyperspace, bullet1, restart;
float oo,ss;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

public void setup(){
 size(500,500);
 //stars
 for(int i=0;i<stars.length;i++){ stars[i] = new Stars(); }
 for(int r=0;r<20;r++){ ast.add(new Asteroid()); }
}
public void draw()
{
  background(0);
    //bullets
  if (bullet1)bullet2.add(new Bullet(ship));
  for(int p=0;p<bullet2.size();p++){
   bullet2.get(p).move();
   bullet2.get(p).show();
   bullet2.get(p).myCenterX += bullet2.get(p).myDirectionX;    
   bullet2.get(p).myCenterY += bullet2.get(p).myDirectionY;  
   if(bullet2.get(p).myCenterX==bullet2.get(p).myDirectionX&&bullet2.get(p).myCenterY==bullet2.get(p).myDirectionY){
   bullet2.remove(p);
 }
for(int o=0;o<ast.size();o++){  
  if (dist(ast.get(o).getX(), ast.get(o).getY(), bullet2.get(p).getX(),bullet2.get(p).getY())<20){
  bullet2.remove(p);
  ast.remove(o);
break;
 }
}
}
oo = (0.05);
if(ship.getDirectionX()>6){ship.setDirectionX(6);}
  if(ship.getDirectionY()>6){ship.setDirectionY(6);}
  if(ship.getDirectionX()<-6){ship.setDirectionX(-6);}
  if(ship.getDirectionY()<-6){ship.setDirectionY(-6);}
//acclerate

  if(restart){
  }
//hyperspace
  if(hyperspace){
    }
   
//rotation
  if(rotateRight){ship.turn(6);}
  if(rotateLeft){ship.turn(-6);}
   //detection
   for(int r=0;r<ast.size();r++) {
    float ship1 = dist(ship.getX(),ship.getY(),ast.get(r).getX(),ast.get(r).getY());
    if(ship1< 20){
      ast.remove(r);
  }
  else
  { 
    ast.get(r).move();
    ast.get(r).show();
  }
   }
//stars
  for(int i=0;i<stars.length;i++) 
  { 
    stars[i].show();
  }
ship.show();
  if(move){ ship.move();ship.accelerate(oo+ss);}
  if(move==false){ ship.move();}
//ship control
  //if(right){
  // ship.myCenterX += 6;
  //}
  //if(left){
  // ship.myCenterX -= 6;
  //}
  //if(up){
  // ship.myCenterY -= 6;
  //}
  //if(down){
  // ship.myCenterY += 6;
  //}
  //if(ship.myCenterX<=9){
  //  ship.myCenterX=489;
  //}
  //if(ship.myCenterX>=490){
  //  ship.myCenterX=9;
  //}
  // if(ship.myCenterY<=9){
  //  ship.myCenterY=489;
  //}
  //if(ship.myCenterY>=490){
  //  ship.myCenterY=9;
  //}
   
   
//bullets

}

//}
public void keyPressed()
{
   if (key=='o'){bullet1=true;}  
   //if (key=='w') {up = true; }
   //if (key=='d'){right = true;}
   //if (key=='a'){left = true;}
   //if (key=='s'){down = true;}
   if (key=='e'){move=true;}
   if (key=='f'){rotateRight = true;}
   if (key=='z'){rotateLeft = true;}
   
   if (key=='h'){
     hyperspace = true;
     ship.setX((int)(Math.random()*500));
     ship.setY((int)(Math.random()*500));
     ship.setDirectionX(0);
     ship.setDirectionY(0);
     ship.setPointDirection((int)(Math.random()*360));
   }
   if (key=='g'){
     restart = true;
     ship.setX((int)(Math.random()*500));
     ship.setY((int)(Math.random()*500));
     ship.setDirectionX(0);
     ship.setDirectionY(0);
     ship.setPointDirection((int)(Math.random()*360));
     move=false;
     for(int l=0;l<ast.size();l++){ 
       ast.remove(l);
     }
     for(int q=0;q<20;q++){ 
       ast.add(new Asteroid());
     }
   }
     for(int w=0;w<ast.size();w++) { 
       ast.get(w).move();
       ast.get(w).show();
     }
   }

public void keyReleased(){
   if (key=='o'){bullet1=false;}
   //if (key=='d'){right=false;}
   //if (key=='a'){left=false;}
   //if (key=='w'){up=false;}
   //if (key=='s'){down=false;}
   if (key=='e'){move=false;}
   if (key=='f'){rotateRight = false;}
   if (key=='z'){rotateLeft = false;}
   if (key=='g'){restart = false;}
   if (key=='h'){hyperspace=false;}
}
