class Personaje{
 float x,y,rx,ry = 0;
 float vx,vy,dx,dy = 0;
 int imagenes = 3;
 int animacion = 0;
 PImage [] personaje = new PImage[imagenes];
 PImage [] personaje2 = new PImage[imagenes];
 int count=1;
  
  Personaje(){
    x = width/2;
    y = height/2;
    vx = 5;
    vy = 5;
    rx = 95;
    ry = 100;
    dx = 1;
    dy = 1;
    
    for(int i=0; i < personaje.length; i++){
      personaje[i] = loadImage("detective"+ i + ".png");
    } 
    
    for(int i=0; i < personaje2.length; i++){
      personaje2[i] = loadImage("detectivepiskel"+ i + ".png");
    }
    
  }
  
  void display(){
    
    if(a || s || w ||d){
      
      if(count==0){
      image(personaje[animacion],x,y);
      if(frameCount%10 == 0){
       animacion = (animacion+1)%personaje.length;}
      }
       
      if(count==1){ 
        image(personaje2[animacion],x,y);
        if(frameCount%10 == 0){
         animacion = (animacion+1)%personaje2.length;}
      }
    }
    else {
     if(count == 0){
      image(personaje[animacion],x,y); 
     }
     
     if(count == 1){
       image(personaje2[animacion],x,y);
     }
    }
  }    
     
       
       
  void update(){
    dx = 0;
    dy = 0;
    
    if(a){dx = -1; count=1;}
    if(d){dx = 1; count=0;}
    if(s){dy = 1; }
    if(w){dy = -1; }
    
    x += vx*dx;
    y += vy*dy;
  }
}
