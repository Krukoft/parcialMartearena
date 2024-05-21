/*prueba de sinc con github*/

PImage fondo;
PImage imagenMoneda;
ArrayList<Moneda> monedas = new ArrayList<Moneda>();
SpawnerMonedas spawnerMonedas;
int contador = 0;
JoyPad joyPad;

void setup() {
  size(720, 900);
  fondo = loadImage("rey-midas.jpg");
  imagenMoneda = loadImage("moneda.png");
  fondo.resize(width, height);
  spawnerMonedas = new SpawnerMonedas(width);
  spawnerMonedas.setVelocidad(new PVector(5, 0));
  joyPad = new JoyPad();
}

public void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setLeftPressed(true);
  }
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setRightPressed(true);
  }
}

public void keyReleased() {
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setLeftPressed(false);
  }
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setRightPressed(false);
  }
}

void draw() {
  background(fondo);
  spawnerMonedas.update();
  if (joyPad.isLeftPressed()) {
    spawnerMonedas.mover(0);
  }
  if (joyPad.isRightPressed()) {
    spawnerMonedas.mover(1);
  }
  if (frameCount % 60 == 0) {
    monedas.add(new Moneda(spawnerMonedas.getPos()));
  }
  for (int i = monedas.size() - 1; i >= 0; i--) {
    Moneda moneda = monedas.get(i);
    moneda.update();
    moneda.display();
    if (moneda.pos.y > height) {
      monedas.remove(i);
      contador++;
    }
  }
  fill(255);
  textSize(32);
  text("Puntaje: " + contador, 10, height - 10);
}
 
