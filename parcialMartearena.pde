/*prueba de sinc con github*/

PImage fondo;
void setup() {
  size(720, 900);
  fondo = loadImage("rey-midas.jpg");
  fondo.resize(width, height);
}

void draw() {
  background(fondo);
}
