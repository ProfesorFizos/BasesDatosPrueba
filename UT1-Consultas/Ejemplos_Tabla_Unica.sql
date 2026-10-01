-- 1) Selección básica de datos y renombrado de columnas
use tienda_online;
-- describir tabla.
describe clientes;
-- Listado simple de nombres y correos de todos los clientes.
select nombre, email as correos from clientes;
-- Catálogo: nombre y precio de todos los productos.
select nombre, precio from productos;
-- Pedidos con su fecha y estado.
-- Pagos: método y monto registrados.
select metodo_pago as método, total_pagado as monto from pagos;
-- Detalle de líneas: producto y cantidad por cada detalle_pedido.
-- Clientes con fecha de registro (orden natural de inserción).
select nombre, fecha_registro as 'Fecha de registro' from clientes as cli;
-- Productos con su categoría asociada (solo columnas principales).
-- IDs de pedidos y su total.
-- IDs de pagos con su fecha de pago.
-- Relación básica: id_pedido e id_producto de detalle_pedido.
select id_pedido, id_producto from detalle_pedido;
-- 3) Ordenación, límite y duplicados (ORDER BY, LIMIT, DISTINCT)
-- Clientes con fecha de registro (orden por fecha de registro).
select nombre, fecha_registro from clientes order by fecha_registro desc limit 3;
-- Top 10 productos más caros.
select * from productos order by precio asc limit 10;
-- Últimos 20 pedidos por fecha_pedido DESC.
-- Clientes más recientes por fecha_registro.
-- Primeros 5 productos con menor stock.
-- DISTINCT de categorías de productos disponibles.
select distinct categoria from productos;
-- Países distintos de los clientes registrados.
select distinct pais from clientes;
select count(distinct pais) from clientes;
-- Pagos ordenados por monto DESC (mayor a menor).
-- Pedidos ordenados por total ASC.
-- Primeros 10 clientes por orden alfabético del nombre.
-- Top 5 productos más baratos en la categoría “Accesorios”.
select * from productos 
where categoria = "Accesorios" 
order by precio 
limit 5;
-- 2) Filtros con WHERE (comparadores, lógicos, BETWEEN, IN, LIKE, NULL)
-- Clientes registrados en 2024.
-- Productos con precio > 200.
select * from productos where precio > 20;
-- Pedidos con estado = 'pendiente' y total > 500.
select * from pedidos 
where estado = "pendiente" 
and coste_total > 500;
-- Pagos cuyo método IN ('tarjeta','paypal').
-- Productos con stock entre 300 y 400.
select * from productos where stock between 300 and 400;
-- Clientes de país IN ('España','México','Argentina').
-- Productos cuyo nombre contenga Silla.
-- Pedidos con fecha_pedido en abril de 2023.
-- Pagos con fecha_pago IS NULL (simularía no pagados si existieran).
-- Detalles donde cantidad sea 3 o más pero el precio_unitario menor que 50.







