class SpawnerMonedas{
  PVector pos;
  int width;
  SpawnerMonedas(int width){
    this.width = width;
    this.pos = new PVector(random(0, width - imagenMoneda.width), 0);
  }
  
  void update(){
    pos.x  = random (0, width - imagenMoneda.width);
  }
  
  PVector getPos(){
    return new PVector(pos.x, pos.y);
  }
}
