boolean a,w,s,d = false;
Personaje p;
Pared[] pa = new Pared[5];

void setup(){
  size(1280,720);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
  pa[i] = new Pared(200*i,200,0);
  }
}

void draw(){
  background(0);
  p.update();
  colision();
  p.display();
  for(int i = 0; i < pa.length; i++){
  pa[i].display();
  }
}
