class Display {
  private float tempCorrente;
  private float tempTarget;

  public Display() {
    this.tempCorrente = 20;
    this.tempTarget = 20;
  }

  public void aumentaTarget() {
    this.tempTarget = Math.min(30, this.tempTarget + 0.5f);
  }

  public void diminuisciTarget() {
    this.tempTarget = Math.max(15, this.tempTarget - 0.5f);
  }

  public void update(int x, int y, boolean isAcceso) {
    if (isAcceso) {
      // Simula variazione temperatura
      if (tempCorrente < tempTarget) tempCorrente += 0.1f;
      if (tempCorrente > tempTarget) tempCorrente -= 0.1f;

      app.fill(0);
      app.textAlign(app.CENTER);
      app.text(String.format("%.1f°C", tempCorrente), x, y);
      app.text("Target: " + String.format("%.1f°C", tempTarget), x, y + 20);
    }
  }
}
