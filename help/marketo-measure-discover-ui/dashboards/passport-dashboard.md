---
description: Painel do Passport - [!DNL Marketo Measure] - Produto
title: Painel do Passport
feature: Reporting
source-git-commit: dc4dd001d319f13ebd1c4ce418acf2faa27cfe81
workflow-type: tm+mt
source-wordcount: '263'
ht-degree: 8%

---

# Painel do Passport {#passport-dashboard}

O painel Passport oferece aos profissionais de marketing uma visualização dinâmica de clientes potenciais, contatos e oportunidades à medida que transitam por vários estágios em um período especificado. Ao filtrar por uma data específica, os usuários também podem obter um instantâneo dos registros desse dia.

Perguntas que o painel responde:

* Quantos leads, contatos ou oportunidades existiam em cada estágio não terminal em um dia escolhido?
* Durante um período especificado, quantos Clientes Potenciais ou Contatos distintos avançaram em cada estágio transitório?
   * _Exemplo_: Se o lead A estivesse na fase 1 em 1/1/2023 e avançasse para a fase 5 até 31/3/2023, a análise do passaporte do primeiro trimestre de 2023 contaria o lead A nas fases de 1 a 5.
* Quantas Oportunidades exclusivas passaram por cada estágio transitório durante um determinado período?

<table style="table-layout:auto"> 
<tbody>
<tr> 
   <th>Componente</th> 
   <th>Descrição</th>
   <th>Tipo de data</th>
   <th>Campos de Drill-Through</th>
   <th>Filtros</th>
  </tr>
  <tr>
    <td>Oportunidades</td>
    <td><li>Cada etapa mostra o número de Oportunidades com MTDs que passaram por elas em um determinado período.</li>
<ul style="padding-left: 30px;"><li>Se uma Oportunidade progredir por vários estágios dentro desse período, ela será contada em cada estágio que passou.</li></ul>
<li>Estágios terminais como "Ganhado fechado" e "Perdido fechado" são excluídos.</li>
<li>As datas de início e término são inclusivas.</li>
<br/><img src="assets/passport-dashboard-1.png" width="600"></td>
    <td rowspan="2">Data de transição</td>
    <td></td>
    <td rowspan="2"><li>Data</li>
<li>Canal</li>
<li>Subcanal</li>
<li>Campanha</li>
<li>Segmentos</li></td>
  </tr>
  <tr>
    <td>Leads/contatos</td>
    <td><li>Cada estágio mostra o número de Clientes Potenciais ou Contatos com BTs que passaram por eles em um determinado período.</li>
<ul style="padding-left: 30px;"><li>A exibição de "Cliente em potencial" ou "Contato" é determinada pela preferência definida em: Configurações &gt; Configurações de atribuição &gt; Objeto de painel padrão.</li></ul>
<li>Estágios terminais como "Ganhado fechado" e "Perdido fechado" são excluídos.</li>
<li>As datas de início e término são inclusivas.</li>
<br/><img src="assets/passport-dashboard-2.png" width="600"></td>
    <td><li>Id Do Cliente Potencial/Contato</li>
<li>Email de cliente potencial/contato</li>
<li>Data de criação</li>
<li>Estágio atual</li>
<li>Data de entrada na transição</li>
<li>Data de saída da transição</li></td>
  </tr>
</tbody>
</table>
