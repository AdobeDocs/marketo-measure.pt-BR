---
description: '[!DNL Marketo Measure] Integrações com o Adobe Launch - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Integrações com o Adobe Launch'
exl-id: 316ee8a8-b2d3-42e9-9ee5-c9b1d91c2769
feature: Integration
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '359'
ht-degree: 3%

---


# [!DNL Marketo Measure] Integrações com o Adobe Launch {#marketo-measure-integrations}

A extensão do Adobe Launch foi projetada para os usuários existentes do [!DNL Marketo Measure] que já usam o Adobe Launch em seus sites. A extensão do serve como uma solução de gerenciamento de tags que você pode usar para configurar e carregar scripts dinamicamente em suas páginas com base em determinados eventos e condições.

Quando instalada e configurada no Adobe Launch, a extensão [!DNL Marketo Measure] carrega o script bizible.js nas páginas em que o script do Adobe Launch está presente. Isso permite que os profissionais de marketing adicionem bizible.js por meio da configuração do Adobe Launch, em vez de modificar explicitamente a página da Web para adicionar a tag de script bizible.js.

## Configurar a extensão do Adobe Launch {#configure-the-adobe-launch-extension}

>[!PREREQUISITES]
>Confira os links a seguir para saber mais sobre o Adobe Launch e suas extensões:
> [[!DNL Marketo Measure] Extensão](https://experienceleague.adobe.com/docs/experience-platform/destinations/catalog/email/bizible.html?lang=pt-BR#catalog){target="_blank"}
> [Visão geral do Adobe Launch](https://experienceleague.adobe.com/docs/platform-learn/implement-in-websites/overview.html?lang=pt-BR){target="_blank"}
> [Visão Geral da Extensão do Adobe Launch](https://experienceleague.adobe.com/docs/experience-platform/tags/extension-dev/overview.html?lang=pt-BR){target="_blank"}

1. Crie uma propriedade seguindo as etapas [neste artigo](https://experienceleague.adobe.com/docs/platform-learn/implement-in-websites/configure-tags/create-a-property.html?lang=pt-BR#go-to-the-data-collection-interface){target="_blank"}.

1. Clique na propriedade que você criou.

   ![Tela de seleção de propriedade do Adobe Launch mostrando as propriedades disponíveis](assets/marketo-measure-integrations-1.png)

1. Clique em **[!UICONTROL Extensões]**.

   ![Guia Extensões nas configurações de propriedade do Adobe Launch](assets/marketo-measure-integrations-2.png)

1. Clique na guia **[!UICONTROL Catálogo]** e procure por &quot;[!UICONTROL Bizible]&quot;.

   ![Pesquisa de catálogo de extensões mostrando a extensão Bizible](assets/marketo-measure-integrations-3.png)

1. No bloco [!UICONTROL Bizible Analytics], clique em **[!UICONTROL Instalar]**.

   ![Bloco de extensão do Bizible Analytics com botão Instalar](assets/marketo-measure-integrations-4.png)

1. No campo Bizible AccountId, digite a URL do seu site (por exemplo, `adobe.com`).

   ![Configuração de extensão da Bizible com o campo AccountId](assets/marketo-measure-integrations-5.png)

1. Clique em **[!UICONTROL Salvar]**.

   ![Botão Salvar para configuração da extensão Bizible](assets/marketo-measure-integrations-6.png)

1. Clique em **[!UICONTROL Regras]** e selecione **[!UICONTROL Criar nova regra]**.

   ![Guia Regras com o botão Criar nova regra](assets/marketo-measure-integrations-7.png)

1. Clique no botão **[!UICONTROL Adicionar]** em [!UICONTROL Eventos].

   ![Botão Adicionar na seção Eventos da configuração de regra](assets/marketo-measure-integrations-8.png)

1. Na lista suspensa Extensão, selecione **[!UICONTROL Core]**. Em seguida, na lista suspensa Tipo de evento, selecione **[!UICONTROL Biblioteca carregada (Início da página)]**. Se você não atribuir um nome ao evento, será aplicado um nome padrão. Clique em **[!UICONTROL Manter alterações]** quando terminar.

   ![Caixa de diálogo de configuração de evento com extensão Principal e tipo de evento de Biblioteca Carregada](assets/marketo-measure-integrations-9.png)

1. Clique no botão **[!UICONTROL Adicionar]** em Ações.

   ![Botão Adicionar na seção Ações da configuração de regra](assets/marketo-measure-integrations-10.png)

1. Na lista suspensa Extensão, selecione **[!UICONTROL Bizible Analytics]**. Em seguida, no menu suspenso Tipo de ação, selecione **[!UICONTROL Inicializar]**. Se você não atribuir um nome à ação, será aplicado um padrão. Clique em **[!UICONTROL Manter alterações]** quando terminar.

   ![Caixa de diálogo de configuração de ação com extensão do Bizible Analytics e tipo de ação Inicializar](assets/marketo-measure-integrations-11.png)

1. Clique em **[!UICONTROL Salvar]**.

   ![Botão Salvar para a configuração da regra](assets/marketo-measure-integrations-12.png)

