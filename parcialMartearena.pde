/*prueba de sinc con github*/

PImage fondo;
PImage imagenMoneda;
ArrayList<Moneda> monedas = new ArrayList<Moneda>();
SpawnerMonedas spawnerMonedas;
int contador = 0;

void setup() {
  size(720, 900);
  fondo = loadImage("rey-midas.jpg");
  imagenMoneda = loadImage("moneda.png");
  fondo.resize(width, height);
  spawnerMonedas = new SpawnerMonedas(width);
}

void draw() {
  background(fondo);
  spawnerMonedas.update();
  if (frameCount % 60 == 0){
    monedas.add(new Moneda(spawnerMonedas.getPos()));
  }
  for (int i = monedas.size() -1; i>=0; i--){
    Moneda moneda = monedas.get(i);
    moneda.update();
    moneda.display();
    if (moneda.pos.y > height){
      monedas.remove(i);
      contador++;
    }
  }
}
