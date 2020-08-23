class Puerta{
 float x,y,lx,ly,esp,vel,inx,ang = 0;
 
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
      vel = 5;
    }
    else {
     vel = -5; 
    }
    
    if(esp >= 140){
     esp = 140; 
    }
    if(esp <= 0){
     esp = 0; 
    }
    
    esp += vel;
    
  }
}
