class Puerta{
 float x,y,lx,ly,esp,vel,inx,ang,tim = 0;
 
  Puerta(float posx, float posy, float angle){
    lx = 70;
    ly = 20;
    x = posx;
    y = posy;
    ang = angle;
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(ang);
    fill(50);
    rect(0-(esp/2),0,lx,ly);
    rect(lx+(esp/2),0,lx,ly);
    popMatrix();
  }
  
  void mov(boolean t){
    if(t){
      vel = 1;
      opendoor.setGain(-15);
      opendoor.play();
      tim += 1;
     if(tim%180 == 0){
      opendoor.loop(); 
     }
    }
    else {
     vel = -1; 
     
     opendoor.play();
     tim += 1;
     if(tim%180 == 0){
      opendoor.loop(); 
     }
    }
    
    if(esp >= 140){
     esp = 140; 
     opendoor.pause();
    }
    if(esp <= 0){
     esp = 0; 
     opendoor.pause();
    }
    //opendoor.loop();
    //closedoor.loop();
    esp += vel;
    
  }
}
