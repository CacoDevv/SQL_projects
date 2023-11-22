USE db_food_delivery;

UPDATE tb_item_cardapio SET preco_unitario = 35.90  WHERE item_id = 1;

UPDATE tb_cardapio SET nome = 'Guarana Antártica' WHERE cardapio_id = 4;

UPDATE tb_endereco_cliente SET cep = '23456789', numero = '456', 
ponto_referencia = 'Ao lado do Parque', complemento = NULL 
WHERE cliente_id = 5; 

UPDATE tb_pedido SET status_id = 1 WHERE cliente_id = 1; 

UPDATE tb_pedido SET data_hora_entrega = '2023-11-16 15:30:05' WHERE pedido_id = 1;