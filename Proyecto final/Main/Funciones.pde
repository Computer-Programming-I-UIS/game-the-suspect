

void keyPressed(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = true;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = true;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = true;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = true;}
 if(key == 'f' || key == 'F') {f = true;}
 if(keyCode == ENTER){ enter = true;}
 if(key == 'q' || key == 'Q') {q = true;}
 if(key == 't' || key == 'T') {t = true;y=false;u=false;r=false;o=false;g=false;h=false;j=false;k=false;l=false;}
 if(key == 'y' || key == 'Y') {y = true;t=false;u=false;r=false;o=false;g=false;h=false;j=false;k=false;l=false;}
 if(key == 'u' || key == 'U') {u = true;t=false;y=false;r=false;o=false;g=false;h=false;j=false;k=false;l=false;}
 if(key == 'r' || key == 'R') {r = true;t=false;y=false;u=false;o=false;g=false;h=false;j=false;k=false;l=false;}
 if(key == 'o' || key == 'O') {o = true;t=false;y=false;u=false;r=false;g=false;h=false;j=false;k=false;l=false;}
 if(key == 'g' || key == 'G') {g = true;t=false;y=false;u=false;r=false;o=false;h=false;j=false;k=false;l=false;}
 if(key == 'h' || key == 'H') {h = true;t=false;y=false;u=false;r=false;o=false;g=false;j=false;k=false;l=false;}
 if(key == 'j' || key == 'J') {j = true;t=false;y=false;u=false;r=false;o=false;g=false;h=false;k=false;l=false;}
 if(key == 'k' || key == 'K') {k = true;t=false;y=false;u=false;r=false;o=false;g=false;h=false;j=false;l=false;}
 if(key == 'l' || key == 'L') {l = true;t=false;y=false;u=false;r=false;o=false;g=false;h=false;j=false;k=false;}
  
}

void keyReleased(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = false; }
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = false;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = false;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = false;}
 if(key == 'f' || key == 'F') {f = false;}
 if(keyCode == ENTER){ enter = false;}
 if(key == 'q' || key == 'Q') {q = false;}
 /*if(key == 't' || key == 'T') {t=false;}
 if(key == 'y' || key == 'Y') {y=false;}
 if(key == 'u' || key == 'U') {u=false;}
 if(key == 'r' || key == 'R') {r=false;}
 if(key == 'o' || key == 'O') {o=false;}
 if(key == 'g' || key == 'G') {g=false;}
 if(key == 'h' || key == 'H') {h=false;}
 if(key == 'j' || key == 'J') {j=false;}
 if(key == 'k' || key == 'K') {k=false;}
 if(key == 'l' || key == 'L') {l=false;}*/
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
    travx = 0;
    travy = 0;
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
    image(fondo,5,5);
    fondo.resize(1240,720);
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
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 540 && mouseY >= 500){
      start = false;
      credits = true;
    }
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
  textSize(30);
  text("Q para ir atras", 20, 40);// si se quiere devolver
  fill(0);
  textSize(80);
  text("W",587,185);
  text("S",600,305);
  text("A",475,305);
  text("D",712,305);
  
}

void creditos(){
  
      pushMatrix();
      credy2 -= 1;
      translate(0,credy2);
      background(0);
      textSize(80);
      text("CREDITOS", 470, credy1);
      textSize(50);
      text("Animacion", 530, credy1 +100);
      textSize(40);
      text("Nicolas Orcasitas Garcia", 400, credy1+150);
      textSize(50);
      text("Fuente de texto", 450, credy1+250);
      textSize(40);
      text("Ansimuz de laposte net", 410, credy1+300);
      textSize(50);
      text("Desarrollo codigo", 420, credy1+400);
      textSize(40);
      text("Nicolas Orcasitas Garcia", 400, credy1+450);
      popMatrix();
      textSize(30);
      text("Q para ir atras", 20, 40);// si se quiere devolver 
      
      //si se presiona la "q" vuelve al menu de inicio
      if(q){ 
       credy2 = 0;
       credits = false;
       start = true;
      }
  }
  
  
  void kill(boolean cond){
    if(cond){
      fill(255);
     transicion();
     tim += 1;
     if(tim >= 90){
       textSize(150);
       fill(0);
       text("Game Over",200,400);
     }
    }
  }
