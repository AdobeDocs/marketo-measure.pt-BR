---
description: Orientação de Métodos de gerenciamento de gastos para usuários do Marketo Measure
title: Métodos de gerenciamento de gastos
exl-id: 36478d8d-986c-4d4f-8854-3287d6c57a9d
feature: Spend Management
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '428'
ht-degree: 1%

---

# Métodos de gerenciamento de gastos {#spend-management-methods}

Os dados de gastos são a chave para o sucesso dos relatórios de ROI com [!DNL Marketo Measure]. Para ter relatórios de ROI precisos e abrangentes em todos os seus canais e subcanais, você deve se certificar de que tem os dados de gastos apropriados sendo transferidos para o [!DNL Marketo Measure].

Há três maneiras de obter dados de gastos no [!DNL Marketo Measure]. Cada método é projetado para obter dados de gastos de entradas de dados específicas.

**1 Contas Conectadas à API**

Qualquer conta publicitária que você tenha conectado a [!DNL Marketo Measure] por meio de uma API tem seus gastos automaticamente transferidos para [!DNL Marketo Measure] para relatórios de ROI. Para verificar quais contas você conectou e, portanto, efetuar pull in de gastos, vá para o aplicativo [!DNL Marketo Measure] e selecione a guia [!UICONTROL Conexões] na seção [!UICONTROL Integrações]. Para obter mais detalhes sobre como configurar as conexões de API, consulte [Plataformas de anúncios integradas](/help/api-connections/integrated-ad-platforms.md#how-to-connect-ad-platforms).

**2 Sincronização de Custo da Campanha do CRM**

Toda conta [!DNL Marketo Measure] tem acesso a um recurso chamado [Sincronizar Custos de Campanha do CRM](/help/marketing-spend/crm-campaign-costs.md#availability). Por padrão, esse bit de recurso está definido como &quot;Não&quot;, mas pode ser ativado a qualquer momento.

![](assets/spend-management-1.png)

Quando ativado, esse recurso extrai automaticamente os gastos de qualquer campanha/programa de CRM que atenda aos seguintes critérios:

i. Primeiro, [!DNL Marketo Measure] verifica se o Programa/Campanha está criando pontos de contato, seja de uma [regra de Sincronização de Campanha](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md) correspondente que foi criada, seja de uma [regra de Sincronização de Programa](/help/marketo-measure-and-marketo/marketo-engage-programs-integration.md) correspondente que foi criada, ou o [valor Habilitar Pontos de Contato do Comprador](/help/channel-tracking-and-setup/offline-channels/legacy-processes/syncing-offline-campaigns.md#how-to-create-a-campaign-and-sync-buyer-touchpoints) seja &quot;Incluir Todos os Membros da Campanha&quot; ou &quot;Incluir Membros da Campanha &#39;Respondidos&#39;.&quot;

ii) Uma Data de início deve ser preenchida na campanha/programa

iii) Uma Data de término deve ser preenchida na campanha/programa

iv) O Custo Real (para Campanhas no SFDC) ou Custo do Período (para Programas no Marketo) deve ser especificado.

**Carregamento de Custo Manual**

Este método permite [carregar manualmente os dados de gastos](/help/marketing-spend/marketing-channel-costs.md#uploading-marketing-costs) para os canais e subcanais que não são cobertos pelas Contas Conectadas à API ou pela Sincronização de Custos da Campanha do CRM. Ao navegar até a seção Gastos de Marketing das configurações do [!DNL Marketo Measure], você pode carregar dados de gastos por meio de um arquivo CSV para qualquer um dos seus Canais.

Os clientes podem usar uma combinação dos três métodos para gerenciar seus gastos, dependendo da configuração específica do [!DNL Marketo Measure]. Como há três métodos de importação de gastos para o [!DNL Marketo Measure], recomendamos que você use o seu painel de Gastos com marketing localizado no Discover para obter uma visão abrangente de todos os dados de gastos. Este painel é o único local onde você poderá ver todos os seus canais e seus gastos associados. O quadro Gasto com marketing pode ajudar você a identificar rapidamente onde pode haver lacunas em seus dados de gastos e como você pode melhorar seus relatórios de ROI.
