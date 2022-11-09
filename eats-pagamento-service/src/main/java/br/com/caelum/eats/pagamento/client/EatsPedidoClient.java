package br.com.caelum.eats.pagamento.client;

import br.com.caelum.eats.pagamento.dto.Pedido;
import br.com.caelum.eats.pagamento.dto.PedidoDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@FeignClient("monolito")
public interface EatsPedidoClient {

    @RequestMapping(method = RequestMethod.PUT,value ="/pedidos/{pedidoId}/status")
    PedidoDto atualizaStatus(@PathVariable Long pedidoId, Pedido pedidoParaAtualizar);

}
