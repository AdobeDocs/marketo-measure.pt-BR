---
unique-page-id: 18874570
description: Estrutura de medidas da Marketo - Medida da Marketo - Documentação do produto
title: Estrutura de medida do Marketo
exl-id: fa6de27c-cdd2-4fd9-ac35-7286fe2752d8
source-git-commit: 7eb5ef616e3ae77d53056496f9a1b301ce59d6ee
workflow-type: tm+mt
source-wordcount: '391'
ht-degree: 0%

---

# Estrutura de medida do Marketo {#marketo-measure-framework}

Saiba mais sobre os quatro componentes principais que compõem a estrutura de medida do Marketo. O Marketo Measure depende desses aplicativos para rastrear, organizar e dados de casa, além de fornecer recursos de relatório. Os quatro componentes que compõem a estrutura da medida Marketo são:

* JavaScript da medida Marketo
* Integrações do CRM
* Aplicativos/sistemas de terceiros
* Aplicativo de medida do Marketo

## Marketo Measure JavaScript {#marketo-measure-javascript}

O JavaScript de medida do Marketo rastreia todas as interações de marketing online, também chamadas de pontos de contato, que os clientes potenciais/potenciais têm com sua organização. É um script personalizado que é adicionado antes do fechamento `</head>` em cada página do seu site.

`<script type="text/javascript" src="//[cdn.bizible.com/scripts/bizible.js](http://cdn.bizible.com/scripts/bizible.js)" async=""></script>`

>[!NOTE]
>
>Para obter instruções sobre como adicionar o Marketo Measure JS, [clique aqui](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md).

O JS da Marketo Measure captura dados de visitas da Web (incluindo visitas anônimas da Web), tráfego geral/navegação de página, downloads de conteúdo e envios de formulário. Esses dados são enviados para o seu CRM e cada interação de marketing é exibida como um ponto de contato.

## Integrações do CRM {#crm-integrations}

A Medida do Marketo integra-se aos CRMs para hospedar e organizar todos os dados capturados pelo Marketo Measure JS. Atualmente, o Marketo Measure tem integrações de API com dois CRMs:

![](assets/1-2.png)

Ao encontrar os dados de Medida do Marketo em seu CRM, você poderá ver as informações granulares relacionadas a cada ponto de contato e gerar relatórios para entender o desempenho dos canais.

## Aplicativos de terceiros {#third-party-applications}

A maioria dos profissionais de marketing depende de alguns aplicativos diferentes para executar seus esforços de marketing. Além do Salesforce e do MS Dynamics, o Marketo Measure é integrado a 13 aplicativos de terceiros (listados abaixo).

![](assets/2-1.png)

Se você estiver executando esforços de marketing usando os aplicativos acima, poderá vincular essas contas à sua conta Marketo Measure . Isso facilita o rastreamento e a transferência de dados para sua conta Marketo Measure .

## Aplicativo de medida do Marketo {#marketo-measure-application}

O aplicativo Marketo Measure é usado para exibir e relatar seus dados de atribuição, definir configurações de conta e atualizar informações de conta. Os principais itens de menu no aplicativo Marketo Measure incluem:

**Configuração da conta**

É aqui que você pode atualizar as informações gerais de sua empresa e acessar o JavaScript de medida do Marketo.

**Configurações**

Este item de menu permite configurar suas configurações de atribuição e mapeamento de canal, gerenciar integrações com CRMs e aplicativos de terceiros, exibir/adicionar usuários da conta de Medida do Marketo e atualizar informações de faturamento.

**Painel de ROI de marketing**

O item de menu Painel de ROI de marketing é o local onde você pode visualizar seus dados em termos de desempenho, atividade e custo do canal.
