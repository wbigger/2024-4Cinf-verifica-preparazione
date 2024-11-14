TermostatoDisplay termo;

public void setup() {
  size(400, 400);
  frameRate(30);
  termo = new TermostatoDisplay();
  termo.setCoordXY(200, 200);
}

public void draw() {
  background(220);
  termo.update();
}

public void keyPressed() {
  if (key == 'a') {
    if (termo.getIsAcceso()) {
      termo.spegni();
    } else {
      termo.accendi();
    }
  }
  if (key == '+') termo.display.aumentaTarget();
  if (key == '-') termo.display.diminuisciTarget();
}
