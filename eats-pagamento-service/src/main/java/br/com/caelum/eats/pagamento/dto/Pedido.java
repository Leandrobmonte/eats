package br.com.caelum.eats.pagamento.dto;

public class Pedido {

    public static enum Status {
        REALIZADO,
        PAGO,
        CONFIRMADO,
        PRONTO,
        SAIU_PARA_ENTREGA,
        ENTREGUE;
    }

    private Status status;

    public Pedido() {
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

}
