package br.com.caelum.eats.pagamento;

import br.com.caelum.eats.pagamento.client.EatsPedidoClient;
import br.com.caelum.eats.pagamento.dto.Pedido;
import br.com.caelum.eats.pagamento.dto.PedidoDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springframework.stereotype.Service;

@Service
public class ClienteRestDoPedido {

    private EatsPedidoClient eatsPedidoClient;

    public ClienteRestDoPedido(EatsPedidoClient eatsPedidoClient) {
        this.eatsPedidoClient = eatsPedidoClient;
    }

    void notificaPagamentoDoPedido(Long pedidoId) {
        Pedido pedido = new Pedido();
        pedido.setStatus(Pedido.Status.PAGO);
        PedidoDto pedidoSalvo = eatsPedidoClient.atualizaStatus(pedidoId, pedido);
        System.out.println(pedidoSalvo.getStatus());
    }

}

@Getter
@AllArgsConstructor
class PedidoMudancaDeStatusRequest {
    private String status;
}


