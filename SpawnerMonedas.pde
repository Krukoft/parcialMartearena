class SpawnerMonedas {
  PVector pos;
  int width;
  PVector velocidad;

  SpawnerMonedas(int width) {
    this.width = width;
    this.pos = new PVector(random(0, width - imagenMoneda.width), 0);
  }

  void update() {}

  void setVelocidad(PVector velocidad) {
    this.velocidad = velocidad;
  }

  PVector getPos() {
    return new PVector(pos.x, pos.y);
  }

  public void mover(int direccion) {
    switch (direccion) {
      case 0:
        this.pos.x -= this.velocidad.x;
        break;
      case 1:
        this.pos.x += this.velocidad.x;
        break;
    }
    this.pos.x = constrain(this.pos.x, 0, width - imagenMoneda.width);
  }
}
