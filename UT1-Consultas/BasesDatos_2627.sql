use tienda_online;
-- ¿Qué productos tiene más stock?
select * From productos order by stock limit 1;
-- ¿Cuántos clientes hay en España?
select * from clientes where pais="España";
-- ¿Qué productos ha comprado Ana?
select *
from productos
join detalle_pedido using(id_producto)
join pedidos using(id_pedido)
join clientes using(id_cliente)
where clientes.nombre like "Ana %";
-- ¿Cúantos productos ha comprado Ana?
select count(*)
from productos
join detalle_pedido using(id_producto)
join pedidos using(id_pedido)
join clientes using(id_cliente)
where clientes.nombre like "Ana %";

select nombre from clientes where pais = "nicaragua";
-- ¿Entre qué IDs están estos clientes?
select * from clientes;
select nombre, pais from clientes;
select min(id_cliente), max(id_cliente) from clientes;









