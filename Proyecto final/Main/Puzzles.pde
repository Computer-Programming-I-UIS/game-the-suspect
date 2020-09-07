class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
  float cuadp1, xlim, vlim, posx, posy,time = 0;
  float p3rx, p3ry, p3x, p3y = 0;
  int i, c,seg, min, p3time = 0;
  boolean com,com2,kill3 = false;
  PVector[] fichas = new PVector[8];  
  PVector[][] p3cuadros = new PVector[7][4];
  boolean[][]p3pos = new boolean[7][4];
  float[][]p3col = new float[7][4];
  PVector spdx = new PVector(5,0);
  PImage[] monalisa = new PImage[8]; 
  PImage cuadro;
  int mate=0;
  PImage operacion;
  int desorden=0;
  int circulo=0;
  int nivel=1;
  int currentTime =0;
  int currentTime1=0;
  int currentTime2=0;
  int currentTime3=0;
  int currentTime4=0;
  int currentTime5=0;
  int orden=0;
  int orden1=0;
  int orden2=0;
  int orden3=0;
  int orden4=0;
  int orden5=0;
  int orden6=0;
 Puzzle(float posxx, float posyy){
   lp1 = 30;
   diamp1 = 80;
   xp1 = 500;
   yp1 = 250;
   cuadp1 = 80;
   i = 0;
   vlim = 1.6;
   posx = posxx;
   posy = posyy;
   
   p3x = 200;
   p3y = 100;
   p3rx = 100;
   p3ry = 100;
   
   cuadro=loadImage("monalisa.png"); 
   cuadro.resize(100,100);
   operacion=loadImage("operacion.png");
   
   for(int i = 0; i < monalisa.length; i++){
    monalisa[i] = loadImage("monalisa" + i + ".png"); 
    monalisa[i].resize(int(cuadp1-2),int(cuadp1-2));
   }
   //ned[2].resize(102,100);
   
    for(int yf = 0; yf < 3; yf++){
      if (yf == 2){
       xlim = 2; 
      }
      else {
       xlim = 3; 
      }
      for(int xf = 0; xf < xlim; xf++){
        if(!(i == 9)){
        fichas[i] = new PVector(posx+10+(cuadp1*xf),posy+10+(cuadp1*yf));
        }
        i++;
      } 
   }
   
   
   for(int i = 0; i < p3cuadros.length; i++){
     for(int j = 0; j < p3cuadros[i].length; j++){
       p3cuadros[i][j] = new PVector(p3x + i*(25+p3rx), p3y + j*(30+p3ry) + 10);
       p3pos[i][j] = false;
       p3col[i][j] = 0;
     }
   }
   
 }
 
 
 void p1(){
   
   fill(0);
   rect(posx,posy,(cuadp1*3)+20,(cuadp1*3)+20);
   fill(150);
   rect(posx+10,posy+10,cuadp1*3,cuadp1*3);
   rect(974,70,150,120,100);
   image(cuadro,1000,80);
   
   
   p1move(posx+10, posy+10);
   
   if(frameCount%60 == 0){
    seg += 1; 
   }
   if(seg >= 60){
    seg = 0;
    min += 1;
   }
   
   fill(255);
   rect(50,560,80,50);
   textSize(30);
   fill(0);
   text(min + ":" + seg,60,600);
   
   if(desorden==0){
   image(monalisa[0],fichas[0].x,fichas[0].y);
   image(monalisa[1],fichas[4].x,fichas[4].y);
   image(monalisa[2],fichas[3].x,fichas[3].y);
   image(monalisa[3],fichas[6].x,fichas[6].y);
   image(monalisa[4],fichas[2].x,fichas[2].y);
   image(monalisa[5],fichas[5].x,fichas[5].y);
   image(monalisa[6],fichas[1].x,fichas[1].y);
   image(monalisa[7],fichas[7].x,fichas[7].y);}
   
   check();
   
 /* if(desorden==1){
   for( int i=0; i<8; i++){
     image(monalisa[i],fichas[i].x,fichas[i].y);}
   com=false;}*/
     
   
 }
 
 
 void p1move(float posx, float posy){
   
   for(int i = 0; i < fichas.length; i++){
     if(mousePressed && mouseX <= fichas[i].x + cuadp1 && mouseX >= fichas[i].x && mouseY <= fichas[i].y + cuadp1 && mouseY >= fichas[i].y){
       c = i;
     }
     if(playing1){
     if(a){
        spdx.set(fichas[c].x-cuadp1,fichas[c].y);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
       
      }
      if(d){
       spdx.set(fichas[c].x + cuadp1, fichas[c].y);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
      }
      
      if(s){
        spdx.set(fichas[c].x,fichas[c].y+cuadp1);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
       
      }
      if(w){
       spdx.set(fichas[c].x, fichas[c].y - cuadp1);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
      }
     }
      
      col(posx, posy);
   }
 }
 
 void col(float posx, float posy){
   
   if(fichas[c].x < posx ){
    fichas[c].set(posx,fichas[c].y); 
   }
   
   if(fichas[c].x + cuadp1 > posx +(3*cuadp1)){
    fichas[c].set(posx +(2*cuadp1),fichas[c].y); 
   }
   
   if(fichas[c].y < posy){
    fichas[c].set(fichas[c].x, posy); 
   }
   
   if(fichas[c].y + cuadp1 > posy + (3*cuadp1)){
    fichas[c].set(fichas[c].x,posy+(2*cuadp1)); 
   }
   
     for(int a = 0; a < fichas.length; a++){
      if(a == c){
       continue; 
      }
      if(fichas[c].x < fichas[a].x+cuadp1 && fichas[c].x+cuadp1 > fichas[a].x && fichas[c].y < fichas[a].y+cuadp1 && fichas[c].y+cuadp1 > fichas[a].y){
        
        if(fichas[c].x + 5 > fichas[a].x+cuadp1){
         fichas[c].set(fichas[a].x + cuadp1, fichas[c].y);
        }
        
        if(fichas[c].x + cuadp1 - 5 < fichas[a].x){
         fichas[c].set(fichas[a].x-cuadp1,fichas[c].y); 
        }
        
        if(fichas[c].y+cuadp1-5 < fichas[a].y ){
         fichas[c].set(fichas[c].x,fichas[a].y-cuadp1);
        }
        
        if(fichas[c].y + 5 > fichas[a].y + cuadp1){
         fichas[c].set(fichas[c].x,fichas[a].y+cuadp1); 
        }
      }
     }
   }
   
   void check(){
       if( 
         fichas[0].x==posx+10           && fichas[0].y==posy+10 && 
         fichas[4].x==posx+10+cuadp1     && fichas[4].y==posy+10 && 
         fichas[3].x==posx+10            && fichas[3].y==posy+10+cuadp1 && 
         fichas[6].x==posx+10+cuadp1     && fichas[6].y==posy+10+cuadp1 && 
         fichas[2].x==posx+10+(2*cuadp1) && fichas[2].y==posy+10+cuadp1 && 
         fichas[5].x==posx+10            && fichas[5].y==posy+10+(2*cuadp1) && 
         fichas[1].x==posx+10+cuadp1     && fichas[1].y==posy+10+(2*cuadp1) && 
         fichas[7].x==posx+10+(2*cuadp1) && fichas[7].y==posy+10+(2*cuadp1)
         ){
          
       mate=0;
       fill(200);  
       textSize(14);
       text("1frase",110,100);
           
          com = true;
        }
        else{
         com = false; 
        }
   }
   
   
    void p2()
   {
       
           
     if (playing1){
      
       fill(200);  
       textSize(14);
       text("1frase",110,100);  
       
       
       
       for( int i=6; i<11; i++){
         rect(i*70,150,55,55);
         }
         
       for( int i=6; i<11; i++){
       rect(i*70,500,55,55);
        }
         
         
         textSize(20);
        if(t){ 
         fill(0);
         text("5",443,180);
         
         }
         else{
         fill(200,0,0);
         text("t",443,180);}
         
        if(y){ 
         fill(0);
          text("1",513,180);
         }
         else{
         fill(200,0,0);
          text("y",513,180);}
         
        if(u){ 
         fill(0);
          text("6",583,180);
         }
         else{
         fill(200,0,0);
          text("u",583,180);}
         
        if(r){ 
         fill(0);;
          text("3",653,180);
         }
         else{
         fill(200,0,0);
         text("r",653,180);}
         
        if(o){ 
         fill(0);
         text("4",723,180);
         }
         else{
         fill(200,0,0);
         text("o",723,180);}
         
          if(g){ 
         fill(0);
         text("2",443,530);
         }
         else{
         fill(200,0,0);
         text("g",443,530);}
         
          if(h){ 
         fill(0);
         text("7",513,530);
         }
         else{
         fill(200,0,0);
          text("h",513,530);}
         
          if(j){ 
         fill(0);
         text("9",583,530);
         }
         else{
         fill(200,0,0);
         text("j",583,530);}
         
         if(k){ 
         fill(0);
         text("8",653,530);
         }
         else{
         fill(200,0,0);
         text("k",653,530);}
         
         if(l){ 
         fill(0);
         text("0",723,530);
         }
         else{
         fill(200,0,0);
         text("l",723,530);}
        
        
        
        fill(0); 
        rect(420,235,350,240);      
        
        fill(255);       
        if(mate==0){
        image(operacion,470,235);
        text("q) 30",460,340);
        text("b) 27/2",460,380);
        text("c) 40/9",460,420);
        text("e) 12/5",560,340);
        text("z) 22",560,380);
        text("x) 51/2",560,420);
        text("n) 29/2",660,340);
        text("v) 18/3",660,380);
        text("m) 33/2",660,420);
        textSize(12);
        text("tienes una oportuniadad",520,460);
      
      }
         
        
       if(key == 'n'){
        mate=1;
        textSize(40);
        text("¡Bien hecho!",490,360);
        fill(200);
        textSize(14);
        text("2frase",110,120); 
        }
        
  
        if(key == 'q'||key == 'b'||key == 'c'||key == 'e'||key == 'z'||key == 'x'||key == 'v'||key == 'm' ){
        mate=2;  
        textSize(40);
        text("game over",490,360);
        playing1=false;
        p.vx=5;
        p.vy=5;
        desorden=0;
        
       
        }
        
       
   }  
   
   if(mate==1){com2=true;}
   
   if(mate==2){ny=0;  nx=-1;
 com=false;}
   
       
    
   
   
          
       if(frameCount%60 == 0){
        seg += 1; 
       }
       if(seg >= 60){
        seg = 0;
        min += 1;
       }
       
       fill(255);
       rect(50,560,80,50);
       textSize(30);
       fill(0);
       text(min + ":" + seg,60,600);    
         
        /*
         text("T",443,180);
         text("y",513,180);
         text("u",583,180);
         text("i",653,180);
         text("o",723,180);
         
         text("g",443,530);
         text("h",513,530);
         text("j",583,530);
         text("k",653,530);
         text("l",723,530);*/
       
}
  
    
  void p3(float px, float py, float prx, float pry){
    fill(200);  
    textSize(14);
    text("1frase",110,100);
    text("2frase",110,120);
    
    
    for(int i = 0; i < p3cuadros.length; i++){
    
     for(int j = 0; j < p3cuadros[i].length; j++){
       if(p3col[i][j] == 0){
        fill(255); 
       }
       else if(p3col[i][j] == 1){
        fill(0,0,255); 
       }
       p3pos[i][j] = false;
       if(px+20 >= p3cuadros[i][j].x && px+prx-20 <= p3cuadros[i][j].x+p3rx && py+80 >= p3cuadros[i][j].y && py+pry <= p3cuadros[i][j].y+p3ry){
         
         p3pos[i][j] = true;
       }
       rect(p3cuadros[i][j].x,p3cuadros[i][j].y,p3rx,p3ry);
     }
    }
    
    if(p3pos[0][0] == true ||
    p3pos[1][0] == true ||
    p3pos[2][0] == true ||
    p3pos[6][0] == true ||
    p3pos[2][1] == true ||
    p3pos[3][1] == true ||
    p3pos[4][1] == true ||
    p3pos[0][2] == true ||
    p3pos[2][2] == true ||
    p3pos[3][2] == true ||
    p3pos[0][3] == true ||
    p3pos[5][3] == true ||
    p3pos[6][3] == true ){
      
      kill3 = true;
    }
  }
  
  void p3camino(){
    
    if(frameCount%10 == 0){
     p3time += 1; 
    }
    
    for(int i = 0; i < p3col.length; i++){
     for(int j = 0; j < p3col[i].length; j++){
      p3col[i][j] = 0; 
     }
    }
    switch (p3time){
     
      case 1:
      p3col[0][1] = 1; 
      break;
      
      case 2:
      p3col[1][1] = 1;
      break;
      
      case 3:
      p3col[1][2] = 1;
      break;
      
      case 4:
      p3col[1][3] = 1;
      break;
      
      case 5:
      p3col[2][3] = 1;
      break;
      
      case 6:
      p3col[3][3] = 1;
      break;
      
      case 7:
      p3col[4][3] = 1;
      break;
      
      case 8:
      p3col[4][2] = 1;
      break;
      
      case 9:
      p3col[5][2] = 1;
      break;
      
      case 10:
      p3col[6][2] = 1;
      break;
      
      case 11:
      p3col[6][1] = 1;
      break;
      
      case 12:
      p3col[5][1] = 1;
      break;
      
      case 13:
      p3col[5][0] = 1;
      break;
      
      case 14:
      p3col[4][0] = 1;
      break;
      
      case 15:
      p3col[3][0] = 1;
      break;
      
      default:
    }
  }
 
  void p4(){
    
   
   if(circulo==1){currentTime+=1;}
   if(circulo==2){currentTime1+=1;}
   if(circulo==3){currentTime2+=1;}
   if(circulo==4){currentTime3+=1;}
   if(circulo==5){currentTime4+=1;}
   if(circulo==6){currentTime5+=1;}
   if (playing1){
      
    
    text(currentTime,700,50);
    
    fill(250,0,0);
    rect(270,180,10,350);
    rect(270,180,350,10);
    rect(270,530,350,10);
    rect(620,180,10,360);
    
    rect(670,180,10,350);
    rect(670,180,350,10);
    rect(670,530,350,10);
    rect(1020,180,10,360);
    
    fill(250);
    
    ellipse(335,250,90,90);
    ellipse(450,250,90,90);
    ellipse(565,250,90,90);
    ellipse(335,360,90,90);
    ellipse(450,360,90,90);
    ellipse(565,360,90,90);
    ellipse(335,470,90,90);
    ellipse(450,470,90,90);
    ellipse(565,470,90,90);
   /* fill(0);
    text("t",330,250);
    text("y",445,250);
    text("u",560,250);
    text("g",330,360);
    text("h",445,360);
    text("j",560,360);
    text("b",330,470);
    text("n",445,470);
    text("m",560,470);*/
    
     
       if(mousePressed && mouseX<380 && mouseX>290 && mouseY<295 && mouseY>205){fill(0,200,0);ellipse(335,250,90,90);orden=1;}
      
       if(mousePressed && mouseX<495 && mouseX>405 && mouseY<405 && mouseY>315){fill(0,200,0);ellipse(450,360,90,90);orden1=1;}
       
       if(mousePressed && mouseX<495 && mouseX>405 && mouseY<295 && mouseY>205){fill(0,200,0);ellipse(450,250,90,90);orden2=1;}
       
       if(mousePressed && mouseX<610 && mouseX>520 && mouseY<515 && mouseY>425){fill(0,200,0);ellipse(565,470,90,90);orden3=1;}
       
       if(mousePressed && mouseX<380 && mouseX>290 && mouseY<515 && mouseY>425){fill(0,200,0);ellipse(335,470,90,90);orden4=1;}
       
       if(mousePressed && mouseX<610 && mouseX>520 && mouseY<295 && mouseY>205){fill(0,200,0);ellipse(565,250,90,90);orden5=1;}
       
       if(mousePressed && mouseX<380 && mouseX>290 && mouseY<405 && mouseY>315){fill(0,200,0);ellipse(335,360,90,90);orden6=1;}
       
       if(mousePressed && mouseX<610 && mouseX>520 && mouseY<405 && mouseY>315){fill(0,200,0);ellipse(565,360,90,90);orden6=1;}
       
       if(orden==1 && orden1==1){nivel=2;}
       
       if(orden==1 && orden1==1 && orden2==1){nivel=3;}
       
       if(orden==1 && orden1==1 && orden2==1 && orden3==1){nivel=4;}
       
       if(orden==1 && orden1==1 && orden2==1 && orden3==1 && orden4==1){nivel=5;}
       
       if(orden==1 && orden1==1 && orden2==1 && orden3==1 && orden4==1 && orden5==1){nivel=6;}
      
      
      /*if(keyPressed==true){
      if(key=='t'){
      fill(0,200,0);
      ellipse(335,250,90,90);
      if(key=='h'){ellipse(450,360,90,90);nivel=2;}}}
      
      if(t){
      fill(0,200,0);
      ellipse(335,250,90,90);
      if(h){ellipse(450,360,90,90);}
      if(m){ellipse(450,250,90,90);nivel=3;}}*/
        
       
      
       switch(nivel){
         
         case 1:
         circulo=1;
        if(currentTime>400 && currentTime<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
              
        if(currentTime>600 && currentTime < 700){
           fill(0,200,0);
            ellipse(850,360,90,90); }
        
        break;
        
         case 2:
         circulo=2;
         if(currentTime1>400 && currentTime1<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
        
        if(currentTime1>600 && currentTime1 < 700){
           fill(0,200,0);
            ellipse(850,360,90,90); }
        
        if(currentTime1>700 && currentTime1 < 800){
           fill(0,200,0);
            ellipse(850,250,90,90); }
        
        break;
        
         case 3:
         circulo=3;
        if(currentTime2>400 && currentTime2<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
        
        if(currentTime2>600 && currentTime2 < 700){
           fill(0,200,0);
            ellipse(850,360,90,90);} 
        
        if(currentTime2>700 && currentTime2 < 800){
           fill(0,200,0);
            ellipse(850,250,90,90); }
        
        if(currentTime2>800 && currentTime2 < 900){
           fill(0,200,0);
           ellipse(965,470,90,90); }
        break;
        
        case 4:
         circulo=4;
        if(currentTime3>400 && currentTime3<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
        
        if(currentTime3>600 && currentTime3 < 700){
           fill(0,200,0);
            ellipse(850,360,90,90);} 
        
        if(currentTime3>700 && currentTime3 < 800){
           fill(0,200,0);
            ellipse(850,250,90,90); }
            
        if(currentTime3>800 && currentTime3 < 900){
           fill(0,200,0);
           ellipse(965,470,90,90); }    
        
        if(currentTime3>900 && currentTime3 < 1000){
           fill(0,200,0);
           ellipse(735,470,90,90); }
        break;  
        
        case 5:
         circulo=5;
        if(currentTime4>400 && currentTime4<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
        
        if(currentTime4>600 && currentTime4 < 700){
           fill(0,200,0);
            ellipse(850,360,90,90);} 
        
        if(currentTime4>700 && currentTime4 < 800){
           fill(0,200,0);
            ellipse(850,250,90,90); }
            
        if(currentTime4>800 && currentTime4 < 900){
           fill(0,200,0);
           ellipse(965,470,90,90); }    
        
        if(currentTime4>900 && currentTime4 < 1000){
           fill(0,200,0);
           ellipse(735,470,90,90); } 
        
        if(currentTime4>1000 && currentTime4 < 1100){
           fill(0,200,0);
           ellipse(965,250,90,90); } 
          break;
          
        case 6:
         circulo=6;
        if(currentTime5>400 && currentTime5<500 ){
           fill(0,200,0);
          ellipse(735,250,90,90); }
        
        if(currentTime5>600 && currentTime5 < 700){
           fill(0,200,0);
            ellipse(850,360,90,90);} 
        
        if(currentTime5>700 && currentTime5 < 800){
           fill(0,200,0);
            ellipse(850,250,90,90); }
            
        if(currentTime5>800 && currentTime5 < 900){
           fill(0,200,0);
           ellipse(965,470,90,90); }    
        
        if(currentTime5>900 && currentTime5 < 1000){
           fill(0,200,0);
           ellipse(735,470,90,90); } 
        
        if(currentTime5>1000 && currentTime5 < 1100){
           fill(0,200,0);
           ellipse(965,250,90,90); } 
           
        if(currentTime5>1100 && currentTime5 < 1200){
           fill(0,200,0);
           ellipse(735,360,90,90); }  
           
        if(currentTime5>1200 && currentTime5< 1300){
           fill(0,200,0);
           ellipse(965,360,90,90); }    
          break;  
       } 
     
  }
 }
  
  
}
