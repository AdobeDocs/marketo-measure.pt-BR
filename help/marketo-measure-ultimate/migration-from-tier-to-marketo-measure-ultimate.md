---
description: Saiba mais sobre o processo de migração ao mudar da  [!DNL Marketo Measure] Assinatura em camadas para a [!DNL Marketo Measure] Ultimate.
title: Migração do nível para o  [!DNL Marketo Measure] Ultimate
feature: Integration, Tracking, Attribution
exl-id: 828c9bba-3835-484a-bd80-84b5a6b67e22
TQID: https://experienceleague.adobe.com/Q-VV8-RWaGb-lk-vr3y9KK9SjTlsugPJ-N4HrSH5uxA
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
feature_v2:
  - id: c8f57308-7e33-4e41-a385-b55041c78939
topic_v2:
  - id: aa2f3246-cb95-4b30-8899-fdf7d73550cc
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
  - id: d3cdead0-685a-4489-9250-4bb709942f66
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 283
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
