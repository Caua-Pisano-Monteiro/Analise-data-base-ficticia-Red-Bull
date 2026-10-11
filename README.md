# 🥤 Análise de Dados de Vendas | Projeto inspirado na Red Bull

## 📌 Sobre o projeto

Este projeto tem como objetivo desenvolver uma análise de dados com foco em **Marketing e Vendas**, utilizando uma base de dados fictícia inspirada no mercado de bebidas energéticas e no portfólio de produtos da Red Bull.

A proposta é aplicar ferramentas de análise de dados para explorar padrões de vendas, compreender o comportamento dos consumidores e identificar possíveis oportunidades de negócio.

O projeto também tem como finalidade consolidar conhecimentos técnicos e construir um portfólio prático na área de análise de dados.

> **Nota:** os dados utilizados são inteiramente fictícios. Os resultados não representam vendas, consumidores ou informações comerciais reais da Red Bull.

## 🎯 Objetivos

- Identificar quais faixas etárias geram maior faturamento.
- Analisar o desempenho dos produtos e sabores.
- Comparar a quantidade de unidades vendidas e o faturamento.
- Investigar o desempenho dos canais de venda e das regiões.
- Transformar os resultados em informações úteis para a tomada de decisão.

## 🛠️ Tecnologias utilizadas

- **Python:** linguagem utilizada para manipulação e análise dos dados.
- **Pandas:** exploração, agrupamento, agregação e tratamento dos dados.
- **SQL:** consultas para investigar os dados e responder às perguntas de negócio.
- **Power BI:** criação de dashboards e visualizações interativas.

## 📂 Base de dados

O projeto utiliza um arquivo CSV fictício com **2.400 registros e 18 colunas**, abrangendo o período de 1º de janeiro de 2025 a 31 de dezembro de 2026.

Entre as informações disponíveis estão:

| Categoria | Exemplos de informações |
|---|---|
| Vendas | Identificador e data da venda |
| Consumidores | Identificador, faixa etária e ocupação |
| Produtos | Nome, linha, sabor e volume |
| Localização | Região, estado e cidade |
| Canais | Canal de venda |
| Valores | Quantidade, preço unitário e faturamento |
| Comportamento | Ocasião de consumo |

Os identificadores de consumidores são anonimizados e os registros foram simulados.

## 🔎 Etapas do projeto

### 1. Criação da base de dados

- Estruturação de uma base de vendas fictícia.
- Definição das colunas necessárias para as análises.
- Organização dos dados em formato CSV.

### 2. Exploração e tratamento com Python e Pandas

Nesta etapa, o trabalho envolve:

- Verificação dos tipos de dados.
- Investigação de valores ausentes e duplicidades.
- Validação do faturamento com base no preço unitário e na quantidade vendida.
- Agrupamento dos dados por faixa etária, produto e outras dimensões.
- Cálculo de unidades vendidas e faturamento por grupo.
- Ordenação dos resultados para identificar os maiores valores.
- Exploração de padrões de consumo e desempenho comercial.

Exemplo de análise desenvolvida:

```python
consumidor_faturamento = (
    dados.groupby("faixa_etaria", observed=True)
    .agg(
        QTD=("quantidade_unidades", "sum"),
        faturamento=("faturamento_brl", "sum")
    )
    .sort_values("faturamento", ascending=False)
)

print(consumidor_faturamento)
```

Esse código agrupa as vendas por faixa etária, soma as unidades vendidas e o faturamento de cada grupo e organiza o resultado do maior faturamento para o menor.

### 3. Análise com SQL

Etapa planejada para consultar e comparar os dados por meio de comandos SQL, aprofundando as análises de produtos, consumidores, períodos e canais de venda.

### 4. Visualização com Power BI

Etapa planejada para desenvolver um dashboard interativo com indicadores, gráficos e filtros que facilitem a interpretação dos resultados.

## 📊 Perguntas que o projeto busca responder

1. Qual faixa etária apresenta o maior faturamento?
2. Quais produtos e sabores possuem maior volume de vendas?
3. Quais produtos geram maior faturamento?
4. Quais canais e regiões apresentam melhores resultados?
5. Como o desempenho das vendas varia entre 2025 e 2026?
6. Quais oportunidades podem ser investigadas a partir dos dados?

## 📈 Resultados esperados

Ao final do projeto, espera-se obter:

- Uma base de dados explorada e validada.
- Consultas SQL para responder às perguntas de negócio.
- Indicadores de desempenho comercial.
- Um dashboard interativo no Power BI.
- Uma documentação clara das análises e das conclusões obtidas.

As conclusões serão baseadas exclusivamente na base fictícia utilizada no projeto.

## 🚀 Aprendizados

O desenvolvimento deste projeto permite praticar:

- Manipulação de dados com Pandas.
- Agrupamentos com `groupby()` e agregações com `agg()`.
- Ordenação e comparação de resultados.
- Validação e qualidade dos dados.
- Raciocínio analítico aplicado a Marketing e Vendas.
- Integração entre Python, SQL e Power BI.

## 📌 Status do projeto

**Em desenvolvimento.**

A base de dados já foi criada e as análises exploratórias com Python e Pandas estão em andamento. As etapas de SQL e Power BI estão previstas para a continuidade do projeto.

---

Desenvolvido como projeto de aprendizado em **Análise de Dados**, com foco em transformar dados em informações úteis para decisões de negócio.

