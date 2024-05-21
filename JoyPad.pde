class JoyPad {
  private boolean rightPressed = false;
  private boolean leftPressed = false;

  public boolean isRightPressed() {
    return this.rightPressed;
  }

  public void setRightPressed(boolean rightPressed) {
    this.rightPressed = rightPressed;
  }

  public boolean isLeftPressed() {
    return this.leftPressed;
  }

  public void setLeftPressed(boolean leftPressed) {
    this.leftPressed = leftPressed;
  }
}
