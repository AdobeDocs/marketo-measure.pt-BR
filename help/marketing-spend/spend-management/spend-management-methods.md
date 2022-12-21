---
description: Métodos de gerenciamento de gastos - [!DNL Marketo Measure] - Documentação do produto
title: Métodos de gerenciamento de gastos
exl-id: 36478d8d-986c-4d4f-8854-3287d6c57a9d
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '434'
ht-degree: 0%

---

# Métodos de gerenciamento de gastos {#spend-management-methods}

Os dados de gastos são fundamentais para o sucesso dos relatórios de ROI com [!DNL Marketo Measure]. Para ter relatórios de ROI precisos e abrangentes em todos os canais e subcanais, é necessário garantir que você tenha os dados de gastos apropriados sendo transferidos para o [!DNL Marketo Measure].

Há três maneiras de transferir dados [!DNL Marketo Measure]. Cada método é projetado para obter dados de dados de entradas de dados específicas.

**1) Contas conectadas da API**

Qualquer conta de anúncio à qual você se conectou [!DNL Marketo Measure] por meio de uma API, seus gastos serão automaticamente transferidos para [!DNL Marketo Measure] para relatórios de ROI. Para verificar quais contas você conectou e, portanto, liberar gastos, acesse [!DNL Marketo Measure] e selecione o [!UICONTROL Conexões] na guia [!UICONTROL Integrações] seção. Para obter mais detalhes sobre como configurar suas conexões de API, consulte nossa [Plataformas de anúncios integradas](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md#how-to-connect-ad-platforms) artigo 10. o

**2) Sincronização de Custo da Campanha CRM**

Cada [!DNL Marketo Measure] conta tem acesso a um recurso chamado [Sincronizar custos de campanha do CRM](/help/marketing-spend/spend-management/crm-campaign-costs.md#availability). Por padrão, esse bit de recurso é definido como &quot;Não&quot;, mas pode ser ativado a qualquer momento.

![](assets/spend-management-methods-1.png)

Após a ativação, esse recurso automaticamente obterá os gastos de qualquer campanha/programa de CRM que atenda aos seguintes critérios

i. [!DNL Marketo Measure] O primeiro procura ver se o Campaign/Program está criando pontos de contato, seja a partir de uma correspondência [Regra de sincronização de campanha](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md) que foi criada ou uma correspondência [Regra de sincronização de programas](/help/marketo-measure-and-marketo/marketo-measure-integrations-with-marketo/marketo-engage-programs-integration.md) que foi criado, ou o [Ativar valor de pontos de contato do comprador](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md#how-to-create-a-campaign-and-sync-buyer-touchpoints) é &quot;Incluir todos os membros da campanha&quot; ou &quot;Incluir membros da campanha &#39;respondidos&#39;&quot;.

ii. Uma Data de início deve ser preenchida na campanha/programa

iii. Uma Data final também deve ser preenchida na campanha/programa

iv. Por fim, um Custo Real (para Campanhas no SFDC) ou o Custo do Período (para Programas no Marketo) devem ser especificados.

**3) Upload manual de custo**

Esse método permite [fazer upload manual de dados de gastos](/help/marketing-spend/spend-management/marketing-channel-costs.md#uploading-marketing-costs) para os canais e subcanais que não são cobertos pela API Connected Accounts ou pela CRM Campaign Cost Sync. Ao navegar até a seção Gasto de marketing em seu [!DNL Marketo Measure] , é possível fazer upload dos dados gastos por meio de um arquivo CSV para qualquer um dos seus Canais.

Os clientes podem usar uma combinação dos três métodos para gerenciar seus gastos e dependerão da configuração específica do [!DNL Marketo Measure]. Porque há três métodos de importação de gastos em [!DNL Marketo Measure], recomendamos utilizar seu quadro de gastos com marketing localizado no Discover para obter uma visão abrangente de todos os dados de gastos. Este quadro é o único local onde você poderá ver todos os seus canais e seus gastos associados. O quadro de gastos com marketing pode ajudá-lo a identificar rapidamente onde pode haver lacunas nos dados de gastos e como melhorar seus relatórios de ROI.
