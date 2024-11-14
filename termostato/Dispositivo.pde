
class Dispositivo {
  private boolean isAcceso;
  private int coordX;
  private int coordY;

  public Dispositivo() {
    this.coordX = 200;
    this.coordY = 200;
  }

  public boolean getIsAcceso() {
    return this.isAcceso;
  }

  public void setCoordXY(int x, int y) {
    this.coordX = x;
    this.coordY = y;
  }

  public int getCoordX() {
    return this.coordX;
  }
  public int getCoordY() {
    return this.coordY;
  }

  public void accendi() {
    this.isAcceso = true;
  }
  public void spegni() {
    this.isAcceso = false;
  }

  public void update() {
    noStroke();
    if (this.isAcceso) {
      fill(200, 200, 0);
    } else {
      fill(100);
    }
    circle(coordX, coordY, 100);
  }
}
