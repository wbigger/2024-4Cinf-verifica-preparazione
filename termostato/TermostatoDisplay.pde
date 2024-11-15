class TermostatoDisplay extends Dispositivo {
    public Display display;
    
    public TermostatoDisplay() {
        this.display = new Display();
    }
    
    @Override
    public void update() {
        super.update(); // Chiama l'update della classe base "Dispositivo"
        display.update(getCoordX(), getCoordY(), getIsAcceso());
    }
}
