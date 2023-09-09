---
description: Painel do Passport - [!DNL Marketo Measure] - Produto
title: Painel do Passport
hide: true
hidefromtoc: true
feature: Reporting
source-git-commit: ed0252111fd75870b11ce1b0cdc7eec56c8c5e35
workflow-type: tm+mt
source-wordcount: '323'
ht-degree: 1%

---

# Painel do Passport {#passport-dashboard}

O painel Passport oferece aos profissionais de marketing uma visualização dinâmica de clientes potenciais, contatos e oportunidades à medida que transitam por vários estágios em um período especificado. Ao filtrar por uma data específica, os usuários também podem obter um instantâneo dos registros desse dia.

>[!NOTE]
>
>Este painel está atualmente na versão beta. Durante essa fase de transição, os painéis atuais e novos estarão acessíveis. O painel atual será descontinuado assim que fizermos a transição completa e garantirmos a funcionalidade ideal.

**Perguntas que o painel responde:**

* Quantos leads, contatos ou oportunidades existiam em cada estágio não terminal em um dia escolhido?
* Durante um período especificado, quantos Clientes Potenciais ou Contatos distintos avançaram em cada estágio transitório?
   * _Exemplo_: Se o lead A estivesse na fase 1 em 1/1/2023 e avançasse para a fase 5 até 31/3/2023, a análise do passaporte do primeiro trimestre de 2023 contaria o lead A nas fases de 1 a 5.
* Quantas oportunidades únicas passaram por cada estágio transitório durante um determinado período?

## Componentes do painel {#dashboard-components}

### Oportunidades em Estágio por Nome de Estágio {#opportunities-in-stage-by-stage-name}

* Cada estágio mostra o número de Oportunidades com pontos de contato que passaram por elas em um determinado período.
   * Se uma oportunidade progredir por vários estágios dentro desse intervalo, ela será contada em cada estágio que passar.
* Estágios terminais como &quot;Ganhado fechado&quot; e &quot;Perdido fechado&quot; são excluídos.
* As datas de início e término são inclusivas.

![](assets/passport-dashboard-1.png)

### Clientes Potenciais ou Contatos em Preparo por Nome do Estágio {#leads-or-contacts-in-stage-by-stage-name}

* Cada estágio mostra o número de Clientes Potenciais ou Contatos com pontos de contato que passaram por eles em um determinado período.
   * A exibição de &quot;Cliente em potencial&quot; ou &quot;Contato&quot; é determinada pela preferência definida em: Configurações > Configurações de atribuição > Objeto de painel padrão.
   * Se um lead ou contato progredir por vários estágios dentro desse intervalo, ele será contado em cada estágio que passar.
* Estágios terminais como &quot;Ganhado fechado&quot; e &quot;Perdido fechado&quot; são excluídos.
* As datas de início e término são inclusivas.

![](assets/passport-dashboard-2.png)

## Painel de Filtro {#filter-pane}

Esse painel é equipado com as seguintes configurações e filtros:

* Data (com base na Data de transição)
* Modelo de atribuição
* Canal, Subcanal
* Campanha
* Segmentos

>[!MORELIKETHIS]
>
>[Descubra as noções básicas do painel](/help/marketo-measure-discover-ui/dashboards/discover-dashboard-basics.md){target="_blank"}
