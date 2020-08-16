class Personaje{
 float x,y,rx,ry = 0;
 float vx,vy,dx,dy = 0;
 int imagenes = 3;
 int animacion = 0;
 PImage [] personaje = new PImage[imagenes];
 PImage [] personaje2 = new PImage[imagenes];
 int count=2;
  
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
     for(int i=0; i < personaje.length; i++){
    personaje[i] = loadImage("detective"+ i + ".png");
  }  
  frameRate(6);
  
  for(int i=0; i < personaje2.length; i++){
    personaje2[i] = loadImage("detectivepiskel"+ i + ".png");
  } 
  frameRate(6);
  
  if(count==0){
  image(personaje[animacion],x,y);
   animacion = (animacion+1)%personaje.length;}
   
  if(count==1){ 
    image(personaje2[animacion],x,y);
     animacion = (animacion+1)%personaje2.length;}
     
  if(count==2){
  image(personaje[animacion],x,y);}
      
     
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
