class Item{
  PVector pos;
  PImage imagen;
  
  Item(PVector pos, PImage imagen){
    this.pos = pos;
    this.imagen = imagen;  
  }
  
  void display (){
    image(imagen, pos.x, pos.y);
  }
}
