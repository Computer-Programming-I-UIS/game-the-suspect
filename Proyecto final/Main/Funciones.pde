

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

void nivel00(){
 for(int i = 0; i < pa.length; i++){
   noStroke();
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,235);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,385,20,265);//izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,20, 500,20);//superior left
    break;
    
    case 4:
    pa[i] = new Pared(700,20,500,20);//superior rigth
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,235);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,385,20,265); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
}


void nivelme10(){
  for(int i = 0; i < pa.length; i++){
   switch (i){
    
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,640);//izquierda
     break;
     
     case 2:
     pa[i] = new Pared(1180,20,20,235);//derecha up
     break;
     
     case 3:
     pa[i] = new Pared(1180,385,20,265); // derecha down
     break;
     
     case 4:
     pa[i] = new Pared(20,20, 500,20);//superior left
     break;
     
     case 5:
     pa[i] = new Pared(700,20,500,20);//superior rigth
     break;
     
     default:
     pa[i] = new Pared(0,0,0,0);
   }
  }
}

void nivelme11(){
  for(int i = 0; i < pa.length; i++){
   
    switch(i){
     
      case 0:
      pa[i] = new Pared(20,20,20,640);//izquierda
      break;
      
      case 1:
      pa[i] = new Pared(20,20,1180,20); //superior
      break;
         
      case 2:
      pa[i] = new Pared(1180,20,20,235);//derecha up
      break;
      
      case 3:
      pa[i] = new Pared(1180,385,20,265); // derecha down
      break;
      
      case 4:
      pa[i] = new Pared(20,640, 500,20); // inferior rigth
      break;
      
      case 5:
      pa[i] = new Pared(700,640,500,20); // inferior left
      break;
      
      default:
    }
  }
}


void nivel01(){
 for(int i = 0; i < pa.length; i++){
   noStroke();
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,20,1180,20); //superior
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,235);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,385,20,265);//izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,640, 500,20); // inferior rigth
    break;
    
    case 4:
    pa[i] = new Pared(700,640,500,20); // inferior left
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,235);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,385,20,265); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
  
}

void nivel10(){
 
  for(int i = 0; i < pa.length; i++){
    switch(i){
      
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,235);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,385,20,265);//izquierda down
     break;
     
     case 3:
     pa[i] = new Pared(700,20,500,20);//superior rigth
     break;
     
     case 4:
     pa[i] = new Pared(20,20, 500,20);//superior left
     break;
     
     case 5:
     pa[i] = new Pared(1180,20,20,640);//derecha
     break;
     
     default:
    }
  }
}


void nivel11(){
  
  for(int i = 0; i < pa.length; i++){
   
    switch(i){
      
     case 0:
     pa[i] = new Pared(1180,20,20,640);//derecha
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,235);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,385,20,265);//izquierda down
     break;
     
     case 3:
     pa[i] = new Pared(20,640, 500,20); // inferior rigth
     break;
     
     case 4:
     pa[i] = new Pared(700,640,500,20); // inferior left
     break;
     
     case 5:
     pa[i] = new Pared(20,20,1180,20); //superior
     break;
     
     default:
    }
  }
}



void cambio(){
  
 if(p.y + p.ry <= 20){
  ny += 1; 
  p.y = 650;
 }
 
 if(p.y >= 660){
  ny -= 1; 
  p.y = 20 -p.ry;
 }
 
 if(p.x >= 1200){
  nx += 1;
  p.x = 25 - p.rx;
 }
 
 if(p.x + p.rx <= 20){
  nx -= 1;
  p.x = 1200;
 }
}




void niveles(){
  
  cambio();
  
  switch (ny){
   
    case 0:
    
    switch (nx){
    
       case  0:
       nivel00();
       break;
       
       case -1:
       nivelme10();
       break;
       
       case 1:
       nivel10();
       break;
       
       default :
    }
    break;
    
    case 1:
    
    switch (nx){
    
       case  0:
       nivel01();
       break;
       
       case -1:
       nivelme11();
       break;
       
       case 1:
       nivel11();
       break;
       
       default :
    }
    break;
    
    default:
  }
  
  
}


void transicion(){
  
  if(trax >= width/2){
    travx = -travx;
    travy = -travy;
  }
  if(trax <= 0){
   trax = 0;
   tray = 0;
   tra = false;
  }
  
 trax += travx;
 tray += travy;
 noStroke();
 rect(0,0,trax,height);
 rect(width - trax,0,trax,height);
 rect(0,0,width,tray);
 rect(0,height - tray, width,tray);
}
