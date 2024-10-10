---
description: Painel de ROI de Palavra-chave - [!DNL Marketo Measure] - Produto
title: Painel de ROI da palavra-chave
feature: Reporting
source-git-commit: 3424f8a63da40f8762defae1e6ae22ebe60530d0
workflow-type: tm+mt
source-wordcount: '419'
ht-degree: 3%

---

# Painel de ROI da palavra-chave {#keyword-roi-dashboard}

O Painel de ROI de palavra-chave fornece informações detalhadas sobre o desempenho das campanhas de Pesquisa paga. Ele fornece uma análise abrangente dos custos em nível de palavra-chave, da receita atribuída e dos novos leads e das oportunidades geradas, garantindo uma compreensão clara do ROI da palavra-chave.

Perguntas que o painel responde:

* Qual é o ROI de cada palavra-chave no Google Adwords, Linkedin e Bing Ads?
* Como os custos e a receita atribuída são divididos por palavras-chave individuais?
* Quantos leads e oportunidades foram criados a partir de cada palavra-chave?

## Componentes do painel {#dashboard-components}

### Tabela de Resumo de ROI de Palavra-chave {#keyword-roi-summary-table}

Tabela que exibe a receita, os custos e o ROI atribuídos segmentados por palavras-chave individuais para obter uma análise detalhada.

Detalhe palavras-chave específicas para visualizar as oportunidades influenciadas por cada uma.

**Colunas:**

* **Palavra-chave**
* **Campanha**
* **ID da conta de anúncio** (em breve)
* **Nome da Conta do Anúncio** (Em breve)
* **ID do Grupo de Anúncios** (Em breve)
* **Nome do Grupo de Anúncios** (Em breve)
* **Custo**: custos totais de fontes de dados conectadas.
* **Receita atribuída**: a contribuição de receita total, com base no modelo de atribuição escolhido, de Oportunidades com pontos de contato que foram fechados dentro do período de data filtrado
* **Receita atribuída realizada**: a contribuição de receita total, com base no modelo de atribuição escolhido, de Oportunidades com pontos de contato dentro do período de data filtrado, independentemente de quando elas foram fechadas.
* **Receita não realizada do pipeline atribuída**: a receita do pipeline vinculada aos pontos de contato (Oportunidades em aberto) criados dentro do período de data filtrado.
* **ROI Simples**: a receita atribuída é dividida pelos custos no período de data filtrado.
* **ROI realizado**: a receita atribuída realizada foi dividida pelos custos no período de data filtrado.

### Clientes potenciais e oportunidades por tabela de palavras-chave {#leads-and-opportunities-by-keyword-table}

Tabela que exibe novos leads, oportunidades e custos associados segmentados por palavras-chave individuais para obter uma análise detalhada.

Detalhe palavras-chave específicas para visualizar as oportunidades influenciadas por cada uma.

**Colunas:**

* **Palavra-chave**
* **Campanha**
* **ID da conta de anúncio** (em breve)
* **Nome da Conta do Anúncio** (Em breve)
* **ID do Grupo de Anúncios** (Em breve)
* **Nome do Grupo de Anúncios** (Em breve)
* **Custo**
* **Novos clientes em potencial**: Número total de novos clientes em potencial gerados, incluindo clientes em potencial tocados e não tocados.
* **Custo por Novo Cliente Potencial**: o custo médio por novo Cliente Potencial, derivado do custo total dividido pelo número total de novos Clientes Potenciais.
* **Novas Oportunidades**: Número total de novas Oportunidades geradas, incluindo oportunidades tocadas e não tocadas.
* **Custo por nova oportunidade**: o custo médio por nova oportunidade, derivado do custo total dividido pelo número total de novas oportunidades.

## Painel de Filtro {#filter-pane}

Esse painel é equipado com as seguintes configurações e filtros:

* Data
   * Baseado em:
      * Data de criação: clientes em potencial de notícias, novas oportunidades
      * Data de custo incorrido: custo
      * Data de fechamento: receita atribuída (ROI simples), ofertas
      * Data do ponto de contato: pontos de contato da receita atribuída realizada (ROI realizado)
* Modelo de atribuição
* Palavra-chave
* Campanha
