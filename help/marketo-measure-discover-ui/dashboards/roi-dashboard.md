---
description: Painel de ROI - [!DNL Marketo Measure] - Produto
title: Painel de ROI
hide: true
hidefromtoc: true
feature: Reporting
source-git-commit: f526b904fd3c04691ed784c259cb19fb24a5bd54
workflow-type: tm+mt
source-wordcount: '660'
ht-degree: 18%

---

# Painel de ROI {#roi-dashboard}

O painel de ROI fornece aos profissionais de marketing uma visão detalhada do retorno sobre o investimento em canais, subcanais e campanhas. Ele detalha meticulosamente os padrões de custo e receita, além de destacar métricas como custo por lead, negociação e oportunidade, garantindo uma compreensão abrangente da atribuição de marketing.

Perguntas que o painel responde:

* Quais eram os valores de ROI para cada canal, subcanal e campanha?
* Como os custos e as receitas foram distribuídos em cada canal, subcanal e campanha?
* Qual foi o custo por oportunidade, o custo por negócio e o custo por oportunidade?

<table style="table-layout:auto"> 
<tbody>
 <tr> 
   <th>Componente</th> 
   <th>Descrição</th>
   <th>Campos de Drill-Through</th>
   <th>Tipo de dados</th>
   <th>Filtros</th>
  </tr>
  <tr>
    <td>Mosaico de custos</td>
    <td>Custo total incorrido</td>
    <td>Data do Custo Incorrido</td>
    <td><li>ID da campanha</li>
<li>Nome da campanha</li>
<li>Canal</li>
<li>Subcanal</li>
<li>Data</li>
<li>Gastos</li></td>
    <td rowspan="15"><li>Data</li>
<li>Modelo de atribuição (configuração)</li>
<li>Canal</li>
<li>Subcanal</li>
<li>Campanha</li></td>
  </tr>
  <tr>
    <td>Mosaico de receita atribuída</td>
    <td>Total da receita atribuída</td>
    <td>Data de encerramento</td>
    <td><li>ID da oportunidade</li>
<li>Nome da oportunidade</li>
<li>Data de criação da oportunidade</li>
<li>Data de Fechamento da Oportunidade</li>
<li>Está Fechado (S/N)</li>
<li>Está conquistado (S/N)</li>
<li>Modelo de atribuição</li>
<li>Receita atribuída</li>
<li>Receita Realizada</li></td>
  </tr>
  <tr>
    <td>Mosaico de ROI simples</td>
    <td>ROI herdado: receita dividida por custos em um determinado período. 
    <li>Custo: Custo incorrido no período de data filtrado.</li>
    <li>Receita: receita de oportunidades "conquistadas fechadas" nesse período.</li></td>
    <td>Data de encerramento</td>
    <td>N/D</td>
  </tr>
  <tr>
    <td>Mosaico de ROI realizado</td>
    <td>ROI realizado: representa os resultados tangíveis dos pontos de contato gerados por campanhas em um intervalo de tempo especificado.
    <li>Custo: Custo incorrido no período de data filtrado.</li>
    <li>Receita: receita realizada de todas as negociações "Ganhadas fechadas", especificamente aquelas influenciadas por pontos de contato dentro do período descrito.</li>
    <br/><img src="assets/roi-dashboard-1.png" width="600"></td>
    <td>Data do Custo Incorrido</td>
    <td>N/D</td>
  </tr>
  <tr>
    <td>Total de Novos Blocos de Clientes Potenciais</td>
    <td>Número total de novos clientes em potencial (contagem total) gerados em um período especificado, incluindo clientes em potencial tocados e não tocados.</td>
    <td>Data de criação</td>
    <td rowspan="2">
    <li>ID do lead</li>
    <li>Email do lead</li>
    <li>Data LC</li></td>
  </tr>
  <tr>
    <td>Custo por Novo Bloco de Cliente Potencial</td>
    <td>Número total de novos Clientes Potenciais (contagem inteira) dividido por custos.</td>
    <td>Data de criação</td>
  </tr>
  <tr>
    <td>Total de novos blocos de oportunidades</td>
    <td>Número total de novas Oportunidades (contagem total) geradas em um período especificado, incluindo clientes em potencial tocados e não tocados.</td>
    <td>Data de criação</td>
    <td rowspan="2">
    <li>ID da oportunidade</li>
    <li>Nome da oportunidade</li>
    <li>Data de criação da oportunidade</li>
    <li>Data de Fechamento da Oportunidade</li>
    <li>Está Fechado (S/N)</li>
    <li>Está conquistado (S/N)</li>
    <li>Estágio atual</li></td>
  </tr>
  <tr>
    <td>Custo por novo mosaico de oportunidade</td>
    <td>Número total de novas Oportunidades (contagem inteira) dividido pelos custos.</td>
    <td>Data de criação</td>
  </tr>
  <tr>
    <td>Total de transações lado a lado</td>
    <td>Número total de negociações fechadas em um período especificado, incluindo aquelas sem pontos de contato associados.</td>
    <td>Data de encerramento</td>
    <td><li>ID da oportunidade</li>
<li>Nome da oportunidade</li>
<li>Data de criação da oportunidade</li>
<li>Data de Fechamento da Oportunidade</li>
<li>Está Fechado (S/N)</li>
<li>Está conquistado (S/N)</li>
<li>Estágio atual</li>
<li>Moeda</li>
<li>Modelo de atribuição</li>
<li>Receita atribuída</li>
<li>Receita Realizada</li></td>
  </tr>
  <tr>
    <td>Gráfico de custo e receita por canal</td>
    <td>Gráfico de barras que ilustra o custo e a receita, projetado para oferecer uma perspectiva comparativa sobre sua magnitude em relação a vários canais, subcanais e campanhas.
    <br/><img src="assets/roi-dashboard-2.png" width="600"></td>
    <td>Data de encerramento</td>
    <td>Custo:
<br/>
<li>ID da campanha</li>
<li>Nome da campanha</li>
<li>Canal</li>
<li>Subcanal</li>
<li>Data do Custo Incorrido</li>
<li>Moeda</li>
<li>Gastos</li>
<p>
Receita:
<br/>
<li>ID da oportunidade</li>
<li>Nome da oportunidade</li>
<li>Data de criação da oportunidade</li>
<li>Data de Fechamento da Oportunidade</li>
<li>Está Fechado (S/N)</li>
<li>Está conquistado (S/N)</li>
<li>Receita atribuída</li>
<li>Modelo de atribuição</li>
<li>Receita atribuída</li>
<li>Receita Realizada</li></td>
  </tr>
  <tr>
    <td>ROI realizado vs. simples ao longo do tempo</td>
    <td>Gráfico de linhas de série temporal exibindo a comparação entre ROI Realizado e Simples, rastreando sua progressão ao longo do tempo.
    <br/><img src="assets/roi-dashboard-3.png" width="600"></td>
    <td>ROI Simples: Data de Custo Incorrido e Data de Fechamento
    <p>ROI realizado: Data de incorrido do custo e data do ponto de contato</td>
    <td>N/D</td>
  </tr>
  <tr>
    <td>Gráfico do Custo ao longo do tempo</td>
    <td>Gráfico de barras empilhadas exibindo os custos totais trimestrais/mensais, segmentados por canais individuais para um detalhamento detalhado.
    <br/><img src="assets/roi-dashboard-4.png" width="600"></td>
    <td>Data do Custo Incorrido</td>
    <td rowspan="2"><li>ID da campanha</li>
<li>Nome da campanha</li>
<li>Canal</li>
<li>Subcanal</li>
<li>Data do Custo Incorrido</li>
<li>Moeda</li>
<li>Gastos</li></td>
  </tr>
  <tr>
    <td>Gráfico de custo por canal</td>
    <td>Gráfico de barras que exibe os gastos com marketing segmentados por canais.
    <br/><img src="assets/roi-dashboard-5.png" width="600"></td>
    <td>Data do Custo Incorrido</td>
  </tr>
  <tr>
    <td>Tabela de resumo do ROI</td>
    <td>Tabela exibindo a receita atribuída, os custos e o ROI segmentados por canais individuais para obter uma análise detalhada.
<p>
<b>Colunas:</b>
<p>
<li>Canal/Subcanal/Campanha</li>
<li>Custo</li>
<li>Receita atribuída</li>
<li>ROI simples</li>
<li>ROI realizado</li>
<li>Pipeline não realizado</li>
<ul style="padding-left: 30px;"><li>Pipeline a partir de pontos de contato (Oportunidades abertas) associados a campanhas em um determinado período</li></ul></td>
    <td>ROI Simples: Data de Custo Incorrido e Data de Fechamento
    <p>ROI realizado: Data de incorrido do custo e data do ponto de contato</td>
    <td>N/D</td>
  </tr>
  <tr>
    <td>Tabela de gastos de marketing</td>
    <td>Tabela que exibe custos, novos leads, oportunidades e ofertas fechadas segmentadas por canais individuais para obter um detalhamento detalhado.
<p>
<b>Colunas:</b>
<p>
<li>Canal/Subcanal/Campanha</li>
<li>Custo</li>
<li>Novos leads</li>
<li>Custo por Novo Cliente Potencial</li>
<li>Novas oportunidades</li>
<li>Custo por nova oportunidade</li>
<li>Transações Fechadas</li>
<li>Custo por Negociação Fechado</li></td>
    <td><li>Custo: Data de custo incorrido</li>
<li>Novos clientes em potencial: data de criação</li>
<li>Novas Oportunidades: Data de criação</li>
<li>Transações Fechadas: Data de fechamento</li></td>
    <td>N/D</td>
  </tr>
</tbody>
</table>
