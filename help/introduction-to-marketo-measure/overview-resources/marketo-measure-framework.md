---
unique-page-id: 18874570
description: Estrutura do Marketo Measure - Marketo Measure - Documentação do produto
title: Estrutura do Marketo Measure
exl-id: fa6de27c-cdd2-4fd9-ac35-7286fe2752d8
feature: Fundamentals
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '388'
ht-degree: 100%

---

# Estrutura do Marketo Measure {#marketo-measure-framework}

Saiba mais sobre os quatro componentes principais da estrutura do Marketo Measure. O Marketo Measure depende desses aplicativos para rastrear, organizar e armazenar dados, além de fornecer recursos de relatório. Os quatro componentes que compõem a estrutura do Marketo Measure são:

* JavaScript do Marketo Measure
* Integrações de CRM
* Aplicativos e sistemas de terceiros
* Aplicativo Marketo Measure

## JavaScript do Marketo Measure {#marketo-measure-javascript}

O JavaScript do Marketo Measure rastreia todas as interações de marketing online, também chamadas de touchpoints, que os clientes potenciais/leads têm com sua organização. É um script personalizado adicionado antes da tag de fechamento `</head>` em cada página do seu site.

`<script type="text/javascript" src="//[cdn.bizible.com/scripts/bizible.js](http://cdn.bizible.com/scripts/bizible.js)" async=""></script>`

>[!NOTE]
>
>Para obter instruções sobre como adicionar o JS do Marketo Measure, [clique aqui](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md).

O JS do Marketo Measure captura dados de visitas da web (incluindo visitas anônimas), navegação geral de tráfego e página, downloads de conteúdo e envios de formulário. Esses dados são enviados para o CRM e cada interação de marketing é exibida como um touchpoint.

## Integrações de CRM {#crm-integrations}

O Marketo Measure integra-se com CRMs para hospedar e organizar todos os dados capturados pelo JS do Marketo Measure. Atualmente, o Marketo Measure tem integrações de API com dois CRMs:

![](assets/1-2.png)

Ao encontrar os dados do Marketo Measure no seu CRM, você poderá ver informações detalhadas sobre cada ponto de contato e gerar relatórios para entender o desempenho dos canais.

## Aplicativos de terceiros {#third-party-applications}

A maioria dos profissionais de marketing depende de alguns aplicativos diferentes para colocar suas iniciativas de marketing em prática. Além do Salesforce e do MS Dynamics, o Marketo Measure é integrado a 13 aplicativos de terceiros (listados abaixo).

![](assets/2-1.png)

Se você estiver executando iniciativas de marketing usando os aplicativos acima, poderá vincular essas contas à sua conta do Marketo Measure. Isso facilita o rastreamento e a transferência de dados para a conta do Marketo Measure.

## Aplicativo Marketo Measure {#marketo-measure-application}

O aplicativo Marketo Measure é usado para exibir e relatar seus dados de atribuição, definir configurações da conta e atualizar informações da conta. Os principais itens de menu no aplicativo Marketo Measure incluem:

**Configuração da conta**

Aqui é possível atualizar as informações gerais de sua empresa e acessar o Javascript do Marketo Measure.

**Configurações**

Este item de menu permite definir suas configurações de atribuição e mapeamento de canais, gerenciar integrações com CRMs e aplicativos de terceiros, ver e adicionar usuários de contas do Marketo Measure e atualizar informações de faturamento.

**Painel de ROI de marketing**

O item de menu Painel de ROI de marketing é o local onde você pode visualizar os dados em termos de desempenho, atividade e custo do canal.
