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
  if (bullet1)  bullet2.add(new Bullet(ship));
    for(int i=0;i<bullet2.size();i++){
       bullet2.get(i).move();
bullet2.get(i).show();
 bullet2.get(i).myCenterX +=  bullet2.get(i).myDirectionX;    
bullet2.get(i).myCenterY += bullet2.get(i).myDirectionY;  
if(bullet2.get(i).myCenterX==bullet2.get(i).myDirectionX&&bullet2.get(i).myCenterY==bullet2.get(i).myDirectionY){
  bullet2.remove(i);
}
  for(int b=0;b<ast.size();b++){  
   if (dist(ast.get(b).getX(), ast.get(b).getY(), bullet2.get(i).getX(),bullet2.get(i).getY())<20){

bullet2.remove(i);
ast.remove(b);
break;

}
}
    }

  //acceleration
  oo=0.05;
 
        
   //acceleration limit
if(ship.getDirectionX()>6){ship.setDirectionX(6);}
if(ship.getDirectionY()>6){ship.setDirectionY(6);}
if(ship.getDirectionX()<-6){ship.setDirectionX(-6);}
if(ship.getDirectionY()<-6){ship.setDirectionY(-6);}

          //asteroid detection
for(int i=0;i<ast.size();i++) { 
 float aa =dist(ship.getX(), ship.getY(),ast.get(i).getX(), ast.get(i).getY());
//System.out.println(boop.getDirectionY()+" , "+boop.getDirectionX());
   if (aa<20){
          ast.remove(i);} 
else {
ast.get(i).move();
        ast.get(i).show();}
  }
  
  //star show
 for(int i=0;i<stars.length;i++) { stars[i].show(); }
  
//rotation
   ship.show();
  if(move){ ship.move();ship.accelerate(oo+ss);}
  if(move==false){ ship.move();}
  if(rotateRight){ship.turn(6);}
  if(rotateLeft){ship.turn(-6);}
  //if(stop){ 
  //  ship.setDirectionX(0);
  //  ship.setDirectionY(0);}
  if(hyperspace){
    fill(0);
    noStroke();
    rect(0,0,1000,1000);
    for(int i=0;i<200;i++)
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(250,250,(float)(Math.random()*700),(float)(Math.random()*700));
  }
  }
}
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
