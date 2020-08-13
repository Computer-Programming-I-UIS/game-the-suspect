

void keyPressed(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = true;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = true;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = true;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = true;}
  
}

void keyReleased(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = false;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = false;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = false;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = false;}
  
}


void colision(){
  
  for(int i = 0; i < pa.length; i++){
    if(p.x < pa[i].x+pa[i].rx && p.x + p.rx > pa[i].x && p.y < pa[i].y + pa[i].ry && p.y +p.ry > pa[i].y){
      
      if(p.x + p.vx >= pa[i].x+pa[i].rx){
       p.x = pa[i].x +pa[i].rx; 
      }
      if(p.x + p.rx - p.vx<= pa[i].x){
       p.x = pa[i].x - p.rx; 
      }
      if(p.y + p.vy >= pa[i].y + pa[i].ry){
        p.y = pa[i].y + pa[i].ry;
      }
      if(p.y + p.ry - p.vy <= pa[i].y){
       p.y = pa[i].y - p.ry; 
      }
      
    }
  }
}


void nivel1(){
 for(int i = 0; i < pa.length; i++){
   
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,20,1180,20);
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,620);
    break;
    
    case 2:
    pa[i] = new Pared(20,640, 500,20);
    break;
    
    case 3:
    pa[i] = new Pared(700,640,500,20);
    break;
    
    case 4:
    pa[i] = new Pared(1180,20,20,620);
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
  
}


void nivel0(){
 for(int i = 0; i < pa.length; i++){
   
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,640,1180,20);
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,620);
    break;
    
    case 2:
    pa[i] = new Pared(20,20, 500,20);
    break;
    
    case 3:
    pa[i] = new Pared(700,20,500,20);
    break;
    
    case 4:
    pa[i] = new Pared(1180,20,20,620);
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
  
}

void cambio(){
  
 if(p.y + p.ry <= 20){
  up += 1; 
  p.y = 650;
 }
 
 if(p.y >= 660){
  up -= 1; 
  p.y = 20 -p.ry;
 }
}


void niveles(){
  
  cambio();
  
  switch (up){
   
    case 0:
    nivel0();
    break;
    
    case 1:
    nivel1();
    break;
    
    default:
  }
}
