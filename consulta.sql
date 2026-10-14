--Visualizando a base de dados--
select * from dataBase_redbull

--Faturamento bruto total--
select sum(faturamento_brl) as Faturamento_total from dataBase_redbull

--Faturameento médio--
SELECT round(AVG(faturamento_brl),2) as Faturamento_medio from dataBase_redbull

--Quais produtos vendem mais--
SELECT produto as Produtos, COUNT(quantidade_unida) as QTD, SUM(faturamento_brl) as Faturado 
from dataBase_redbull
GROUP BY produto

--Comparação de faixa etário com a ocasião de consumo do produto--
SELECT faixa_etaria as Idades, ocasiao_consumo as Ocasião_do_consumo, 
		count(quantidade_unida) as QTD, SUM(faturamento_brl) 
from dataBase_redbull
GROUP by faixa_etaria, ocasiao_consumo
ORDER by faixa_etaria, quantidade_unida desc

--Comparar o desempenho de 2025 e 2026--
SELECT
    strftime('%Y', data_venda) AS ano,
    SUM(quantidade_unida) AS unidades_vendidas,
    SUM(faturamento_brl) AS faturamento_total
FROM dataBase_redbull
GROUP BY strftime('%Y', data_venda)
ORDER BY ano;