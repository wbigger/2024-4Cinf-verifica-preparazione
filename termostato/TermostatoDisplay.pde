class TermostatoDisplay extends Dispositivo {
    public Display display;
    
    public TermostatoDisplay() {
        this.display = new Display();
    }
    
    @Override
    public void update() {
        super.update();
        display.update(getCoordX(), getCoordY(), getIsAcceso());
    }
}
