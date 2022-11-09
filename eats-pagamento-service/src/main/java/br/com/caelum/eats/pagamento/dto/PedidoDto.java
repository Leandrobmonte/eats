package br.com.caelum.eats.pagamento.dto;

import java.time.LocalDateTime;

public class PedidoDto {

    private Long id;
    private LocalDateTime dataHora;
    private String status;

    public PedidoDto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDataHora() {
        return dataHora;
    }

    public void setDataHora(LocalDateTime dataHora) {
        this.dataHora = dataHora;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
