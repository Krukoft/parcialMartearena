class SpawnerMonedas{
  PVector pos;
  int width;
  SpawnerMonedas(int width){
    this.width = width;
    this.pos = new PVector(random(width), 0);
  }
  
  void update(){
    pos.x  = random (width);
  }
  
  PVector getPos(){
    return new PVector(pos.x, pos.y);
  }
}
