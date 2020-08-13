class Personaje{
 float x,y,rx,ry = 0;
 float vx,vy,dx,dy = 0;
  
  Personaje(){
    x = width/2;
    y = height/2;
    vx = 5;
    vy = 5;
    rx = 50;
    ry = 50;
    dx = 1;
    dy = 1;
  }
  
  void display(){
    rect(x,y,rx,ry);
  }
  
  void update(){
    dx = 0;
    dy = 0;
    
    if(a){dx = -1;}
    if(d){dx = 1;}
    if(s){dy = 1;}
    if(w){dy = -1;}
    
    x += vx*dx;
    y += vy*dy;
  }
}
