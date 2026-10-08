---
description: Saiba mais sobre o processo de migração ao mudar da assinatura em camadas do [!DNL Marketo Measure] para o Ultimate [!DNL Marketo Measure].
title: Migração do nível para o Ultimate [!DNL Marketo Measure]
feature: Integration, Tracking, Attribution
exl-id: 828c9bba-3835-484a-bd80-84b5a6b67e22
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: 7da342c5-06ee-5869-b3e8-b73d5bf75a9d
    internal-label: Integration
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
  - id: d7322935-5b46-52a3-b6ea-21e6aec748b5
    internal-label: Attribution
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '286'
ht-degree: 1%
---
# Migração do nível 1-2 para o Ultimate [!DNL Marketo Measure] {#migration-from-tier-to-marketo-measure-ultimate}

Este artigo descreve o processo de migração para usuários que estão mudando da assinatura de Nível 1 ou 2 para o Ultimate [!DNL Marketo Measure].

>[!IMPORTANT]
>
>Lembre-se de manter sua instância de camada existente até que a migração seja concluída.

## Coleção de dados {#data-collection}

### Dados de tráfego da Web {#web-traffic-data}

* Nenhuma alteração é necessária para a implantação do JavaScript.

* Ative domínios na nova instância do Ultimate.

* Se necessário, envie um tíquete para migrar e reprocessar dados históricos da Web.

* As integrações de anúncios permanecem inalteradas, mas lembre-se de reconectá-las no Ultimate. Antes de fazer isso, desconecte suas contas de anúncio no locatário de nível.

>[!NOTE]
>
>Os dados históricos e de custo não serão importados. Somente importaremos os dados de custo de anúncios depois que as contas de anúncios forem reconectadas.

### Conexão de Dados Corporativos {#enterprise-data-connection}

Reimplemente todas as conexões de dados de origem no AEP, incluindo as conexões CRM e Marketo Engage.

## Transformação de dados {#data-transformation}

* Os recursos do Account-Based Marketing, incluindo a correspondência entre lead e conta e as pontuações de engajamento preditivo, não estão disponíveis no Ultimate.

  * No entanto, você pode importar os resultados correspondentes de lead para conta por meio do AEP e usá-los na plataforma.

* No Ultimate, as transições de estágio históricas do CRM são inferidas em vez de lidas diretamente, pois não há conexão direta com o CRM.

  * Lemos registros de oportunidade e carimbos de data e hora, vemos o estágio atual e inferimos os estágios históricos.

## Relatórios {#reporting}

* A Ultimate não envia dados de volta para os CRMs.

  * Se você quiser enviar os dados de volta para o CRM, será necessário um pipeline ETL personalizado para extrair dados do Marketo Measure Snowflake para o CRM. Você deve configurar um modelo de dados personalizado em seu CRM.

* Todos os painéis do Discover permanecem os mesmos da solução hierárquica, com a adição dos painéis do Attribution AI.
