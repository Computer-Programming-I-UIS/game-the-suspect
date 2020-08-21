

void keyPressed(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = true;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = true;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = true;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = true;}
 if(key == 'f' || key == 'F') {f = true;}
  
}

void keyReleased(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = false; }
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = false;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = false;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = false;}
 if(key == 'f' || key == 'F') {f = false;}
  
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

void piso(){
  
  for(int i = 0; i < pisoY.length; i++){
    if(i%2 == 0){
     fill( 230,181,126,180);
    }
    if(i%2 == 1){
     fill(161,130,98,180); 
    }
    rect(40,pisoY[i],1140,20); 
  }
}

void inip1(){
 
  if(p.x > 550 && p.x < 690 && p.y > 450){
    
    if(playing1){
     text("F para dejar de jugar",520,600);
     if(f== true && antf == false){
      playing1 = false;  
     }
     p.vx = 0;
     p.vy = 0;
     //pu.p1();
   }
   else{
     text("F para jugar",520,600);
     if(f== true && antf == false){
       playing1 = true;
       pu1 = true;
     }
     p.vx = 5;
     p.vy = 5;
   }
   antf = f;
  }
}
