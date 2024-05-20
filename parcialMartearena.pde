/*prueba de sinc con github*/

PImage fondo;
PImage imagenMoneda;

void setup() {
  size(720, 900);
  fondo = loadImage("rey-midas.jpg");
  imagenMoneda = loadImage("moneda.png");
  fondo.resize(width, height);
}

void draw() {
  background(fondo);
}
