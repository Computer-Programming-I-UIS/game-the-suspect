

void keyPressed(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = true;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = true;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = true;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = true;}
 if(key == 'f' || key == 'F') {f = true;}
 if(keyCode == ENTER){ enter = true;}
 if(key == 'q' || key == 'Q') {q = true;}
  
}

void keyReleased(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = false; }
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = false;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = false;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = false;}
 if(key == 'f' || key == 'F') {f = false;}
 if(keyCode == ENTER){ enter = false;}
 if(key == 'q' || key == 'Q') {q = false;}
  
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
 //noStroke();
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
 
  if(p.x > 550 && p.x < 690 && p.y > 350){
    
    if(playing1){
     textSize(15);
     fill(200,0,0);
     text("F para dejar de jugar",520,595);
     if(f== true && antf == false){
      playing1 = false;  
     }
     p.vx = 0;
     p.vy = 0;
   }
   else{
     textSize(15);
     fill(200,0,0);
     text("F para jugar",520,595);
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

void inicio(){
 
    background(0);
    image(titulo[anim],320,100);
    if(frameCount%15 == 0){
    anim = (anim+1)%titulo.length;}
      
    textSize(30);
    fill(100);
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 340 && mouseY >= 300){
      game = true; 
     start = false;
    }
    rect(460,300,200,40);
    fill(255);
    text("START",470,330);
    
    fill(100);
    rect(460,400,200,40);
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 440 && mouseY >= 400){
      start = false;
      controls = true;
    }
    fill(255);
    text("CONTROLS",470,430);
    
    fill(100);
    rect(460,500,200,40);
    fill(255);
    text("CREDITS",470,530); 
}

void controles(){
 if(q){
   controls = false;
   start = true;
 }
  background(0);
  fill(255);
  rect(570,100,100,100);
  rect(570,220,100,100);
  rect(450,220,100,100);
  rect(690,220,100,100);
  fill(0);
  textSize(80);
  text("W",585,185);
  text("S",585,305);
  text("A",465,305);
  text("D",705,305);
}
