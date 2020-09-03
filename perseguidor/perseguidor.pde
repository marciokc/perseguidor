int x, y;
int raio;
int dx, dy;
int cor;

void setup(){
  fullScreen();
  x=width/2;
  y=height/2;
  raio=width/40;
  fill(100,100,255);
  dx=0;
  dy=0;
}

void mousePressed(){
  cor=255;
}

void mouseReleased(){
  cor=0;
}

void draw(){
  background(cor);
  if(mouseX>x+3) dx=3;
  else if(mouseX<x-3) dx=-3;
  else dx=0;
  
  if(mouseY>y+3) dy=3;
  else if(mouseY<y-3) dy=-3;
  else dy=0;
  
  x+=dx;
  y+=dy;
  
  ellipse(x,y,raio*2,raio*2);
}
