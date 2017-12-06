
--desc CUADRATURA_INVENTARIO;
delete from CUADRATURA_INVENTARIO;
commit;


select * from INVENTARIO_WMS;
delete from INVENTARIO_WMS;
commit;

select * from INVENTARIO_JDA;
delete from INVENTARIO_JDA;
commit;

select * from CUADRATURA_INVENTARIO_2;
delete from CUADRATURA_INVENTARIO_2;
commit;

----
SELECT TO_CHAR(to_date('2017-04-03', 'YYYY-MM-DD'), 'DD/MM/YY') FROM DUAL;

SELECT MAX(FECHA_CALCULADO) FROM CUADRATURA_INVENTARIO_2 WHERE FECHA_CALCULADO >= TO_DATE('06/03/17','DD/MM/YY') AND FECHA_CALCULADO <= TO_DATE('03/04/17','DD/MM/YY')
SELECT MIN(FECHA_CALCULADO) FROM CUADRATURA_INVENTARIO_2

SELECT COUNT(*) FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= TO_DATE('06/03/17','DD/MM/YY') AND FECHA_CALCULADO <= TO_DATE('03/04/17','DD/MM/YY')
SELECT COUNT(*) FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= TO_DATE('06/03/17','DD/MM/YY') AND FECHA_CALCULADO <= TO_DATE('03/04/17','DD/MM/YY')
SELECT COUNT(*) FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= ADD_MONTHS(TO_DATE('04-04-2017','DD-MM-YYYY'),-3) AND FECHA_CALCULADO <= TO_DATE('04/04/17','DD/MM/YY')
SELECT * FROM CUADRATURA_INVENTARIO 

DELETE FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= ADD_MONTHS(TO_DATE('04/04/17','DD/MM/YY'),-3) AND FECHA_CALCULADO <= TO_DATE('04/04/17','DD/MM/YY')
DELETE FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= ADD_MONTHS(TO_DATE('04/04/17','DD/MM/YY'),-3) AND FECHA_CALCULADO <= TO_DATE('04/04/17','DD/MM/YY')


SELECT COUNT(*) FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= TO_CHAR(to_date('2017-06-03', 'YYYY-MM-DD'), 'DD/MM/YY') AND FECHA_CALCULADO <= TO_CHAR(to_date('2017-04-03', 'YYYY-MM-DD'), 'DD/MM/YY')
SELECT COUNT(*) FROM CUADRATURA_INVENTARIO WHERE FECHA_CALCULADO >= (to_date('2017-06-03', 'YYYY-MM-DD')) AND FECHA_CALCULADO <= (to_date('2017-04-03', 'YYYY-MM-DD'))

