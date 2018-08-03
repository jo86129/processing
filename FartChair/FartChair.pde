//you need to press z,x,c,v,b,n  
//there will be four fart file

import ddf.minim.*; //import this to use the mp3,wav
Minim minim; 
AudioPlayer[] player=new AudioPlayer[4];


int num; //it will randomly get one number that be the boom
boolean[] boom=new boolean[6]; //check which is the boom
void setup(){
  size(450,450);
  background(155,100);
  minim = new
  Minim(this);
  player[0] = minim.loadFile("fart01.mp3");
  player[1] = minim.loadFile("fart02.mp3");
  player[2] = minim.loadFile("fart03.mp3");
  player[3] = minim.loadFile("fart04.wav");
  
}
void draw(){
 }
void keyPressed(){
  int musicNum=(int)random(0,4); //random get one file between the four
    getBomb();
    if (key == 'z') {
      if(boom[0]==true)
      {
        background(155,100);
        color c0=#FC8F8F;
        fill(c0);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
       
    }
    if (key == 'x') {
      if(boom[1]==true)
      {
        background(155,100);
        color c1=#8F91FC;
        fill(c1);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
    }
    if (key == 'c') {
      if(boom[2]==true)
      {
        background(155,100);
        color c2=#8FE7FC;
        fill(c2);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
    }
    if (key == 'v') {
      if(boom[3]==true)
      {
        background(155,100);
        color c3=#8FFCC6;
        fill(c3);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
    }
    if (key == 'b') {
      if(boom[4]==true)
      {
        background(155,100);
        color c4=#FCDA8F;
        fill(c4);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
    }
    if (key == 'n') {
      if(boom[5]==true)
      {
        background(155,100);
        color c5=#FF3939;
        fill(c5);
        ellipse(random(width),random(height),50,50);
        player[musicNum].rewind();
        player[musicNum].play();
      }
    }
    
  }
void getBomb(){
   num=(int)random(0,6);
   println(num);
   for(int i=0;i<6;i++)
   {
     if(i==num)
     {
        boom[i]=true; 
     }
     else
     {
        boom[i]=false; 
     }
   }
   
}
