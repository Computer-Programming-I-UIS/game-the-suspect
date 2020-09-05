

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
 if(key == 'z' || key == 'Z') {z = true;}
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
 
  if(p.x > 500 && p.x < 700 && p.y > 400 && p.y<600){
    
    if(playing1){
      
      if(tras3 >= 0){
       tras3 -= 0.5; 
      }
     fill(255,tras3);
     textSize(30);
     text("Click sobre la ficha que quieres",80,200);
     text("mover, y muevela con las teclas", 80, 250);
     text("de movimiento o las flechas", 80, 300);
     textSize(15);
     //ingame.play();
     fill(200,0,0);
     text("F para dejar de jugar",520,595);
     if(f== true && antf == false){
      playing1 = false;
      mgame.pause();
      //mgame.play();
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
       mgame.play();
     }
     p.vx = 5;
     p.vy = 5;
   }
   antf = f;
  }
  
  if(pu.com){
   mgame.pause(); 
  }
}

void inicio(){
  
  if(introtime<=120){
    introtime += 0.5;
  }
  introvol = map(introtime,1,120,0,1);
  if(introvol >= 0.9){
    introvol = 0.9;
  }
  intro.amp(introvol);
  print(introvol+" ; ");
    background(0);
    image(fondo,5,5);
    fondo.resize(1240,720);
    image(titulo[anim],320,100);
    if(frameCount%15 == 0){
    anim = (anim+1)%titulo.length;}
      
    textSize(30);
    fill(100);
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 340 && mouseY >= 300){
      dif = true; 
     start = false;
    }
    rect(460,300,200,40);
    fill(255);
    text("JUGAR",470,330);
    
    fill(100);
    rect(460,400,200,40);
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 440 && mouseY >= 400){
      start = false;
      controls = true;
    }
    fill(255);
    text("CONTROLES",470,430);
    
    fill(100);
    rect(460,500,200,40);
    if(mousePressed && mouseX <= 660 && mouseX >= 460 && mouseY <= 540 && mouseY >= 500){
      start = false;
      credits = true;
    }
    fill(255);
    text("CREDITOS",470,530); 
    
    
    image(edad,20,620);
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
  
  if(introtime>=0){
    introtime -= 0.5;
  }
  introvol = map(introtime,1,120,0,1);
  credvol = map(introtime,120,1,-40,-1);
  if(introvol >= 0.9){
    introvol = 0.9;
  }
  intro.amp(introvol);
  cred.setGain(credvol);
  
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
      text("Raul Andres Hincapie Hernandez", 400, credy1+190);
      textSize(50);
      text("Pintura", 450, credy1+250);
      textSize(40);
      text("Leonardo Da Vinci", 410, credy1+300);
      textSize(50);
      text("Desarrollo código", 420, credy1+400);
      textSize(40);
      text("Nicolas Orcasitas Garcia", 400, credy1+450);
      text("Raul Andres Hincapie Hernandez", 400, credy1+490);
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
     strokeWeight(1);
     tim += 1;
     if(tim >= 90){
       textSize(150);
       fill(0);
       text("Game Over",200,400);
       
       textSize(30);
       text("Q para ir atras", 20, 40);// si se quiere devolver 
       
       if(q){
       nx = -1;
       ny = 0;
       p.x = 100;
       p.y = (height/2)-(p.ry/2);
       p.vx = 5;
       p.vy = 5;
       pu.min = 0;
       pu.seg = 0;
       pu1 = false;
       playing1 = false;
       mgame.loop();
       mgame.pause();
       travx = 8;
       travy = map(travx,0,width,0,height);
       trax = 0;
       tray = 0;
       tim = 0;
       
     }
     }
     
    }
    
    strokeWeight(1);
  }
  
  void inip2(){
 
  if(p.x > 150 && p.x < 270 && p.y < 300 && p.y > 235){
    
    if(playing1){
     textSize(15);
     //ingame.play();
     fill(250);
     text("F para dejar de jugar",175,238);
     textSize(12);
     text("oprime la tecla correspondiente a cada cuadro para ver su valor",430,113);
     text("oprime la tecla correspondiente a la respuesta que desea seleccionar",430,137);
     if(f== true && antf == false){
      playing1 = false;  
      mgame.pause();
      //mgame.play();
     }
     p.vx = 0;
     p.vy = 0;
   }
   else{
     textSize(15);
     fill(250);
     text("F para jugar",175,238);
     if(f== true && antf == false){
       playing1 = true;
       pu1 = true;
       mgame.play();
     }
     p.vx = 5;
     p.vy = 5;
   }
   antf = f;
  }
}

void dificultad(){
  textSize(60);
  fill(0);
 text("SELECCIONA LA DIFICULTAD", 250, 100);
 textSize(50);
 fill(255);
 rect(530,250,200,60);//Facil
 rect(530,370,200,60);//Medio
 rect(530,490,200,60);//Dificil
 fill(0);
 text("FACIL",555, 300);
 text("MEDIO",550,420);
 text("DIFICIL",540,540);
 
 if(mousePressed && mouseX >=530 &&mouseX <=730 && mouseY >= 250 && mouseY <= 310){
  lmin = 20;
  game = true;
  dif = false;
 }
 
 if(mousePressed && mouseX >=530 &&mouseX <=730 && mouseY >= 370 && mouseY <= 430){
  lmin = 15;
  game = true;
  dif = false;
 }
 
 if(mousePressed && mouseX >=530 &&mouseX <=730 && mouseY >= 490 && mouseY <= 550){
  lmin = 10;
  game = true;
  dif = false;
 }
 
 
}
