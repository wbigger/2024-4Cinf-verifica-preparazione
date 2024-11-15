class Display {
  private float tempTarget;

  public Display() {
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

      fill(0);
      textAlign(CENTER);
      text("Target: " + String.format("%.1f°C", tempTarget), x, y);
    }
  }
}
