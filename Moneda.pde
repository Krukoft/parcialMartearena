class Moneda extends Item{
  PVector velocidad;
  Moneda(PVector pos){
    super(pos, imagenMoneda);
    velocidad = new PVector(0, 5);
  }
  void update(){
    pos.add(velocidad);
  }
}
