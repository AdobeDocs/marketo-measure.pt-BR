---
description: '[!DNL Marketo Measure] Integrações com o Adobe Launch - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Integrações com o Adobe Launch'
exl-id: 316ee8a8-b2d3-42e9-9ee5-c9b1d91c2769
feature: Integration
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '294'
ht-degree: 2%

---

# [!DNL Marketo Measure] Integrações com o Adobe Launch {#marketo-measure-integrations-with-adobe-launch}

A extensão do Adobe Launch foi projetada para [!DNL Marketo Measure] que já usam o Adobe Launch em seu site. A extensão do serve como uma solução de gerenciamento de tags que você pode usar para configurar e carregar scripts dinamicamente em suas páginas com base em determinados eventos e condições.

Quando instalado e configurado no Adobe Launch, a variável [!DNL Marketo Measure] A extensão carrega o script bizible.js nas páginas em que o script do Adobe Launch está presente. Isso permite que os profissionais de marketing adicionem bizible.js por meio da configuração do Adobe Launch, em vez de modificar explicitamente a página da Web para adicionar a tag de script bizible.js.

## Configurar a extensão do Adobe Launch {#configure-the-adobe-launch-extension}

>[!PREREQUISITES]
>
>Confira os links a seguir para saber mais sobre o Adobe Launch e suas extensões:
>
>* [[!DNL Marketo Measure] Extensão](https://experienceleague.adobe.com/docs/experience-platform/destinations/catalog/email/bizible.html#catalog){target="_blank"}
>* [Visão geral do Adobe Launch](https://experienceleague.adobe.com/docs/platform-learn/implement-in-websites/overview.html){target="_blank"}
>* [Visão geral da extensão do Adobe Launch](https://experienceleague.adobe.com/docs/experience-platform/tags/extension-dev/overview.html){target="_blank"}

1. Crie uma propriedade seguindo as etapas [neste artigo](https://experienceleague.adobe.com/docs/platform-learn/implement-in-websites/configure-tags/create-a-property.html#go-to-the-data-collection-interface){target="_blank"}.

1. Clique na propriedade que você criou.

   ![](assets/marketo-measure-integrations-with-adobe-launch-1.png)

1. Clique em **[!UICONTROL Extensões]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-2.png)

1. Clique em **[!UICONTROL Catálogo]** e pesquisar por &quot;[!UICONTROL Bizible].&quot;

   ![](assets/marketo-measure-integrations-with-adobe-launch-3.png)

1. No [!UICONTROL Bizible Analytics] bloco, clique em **[!UICONTROL Instalar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-4.png)

1. No campo Bizible AccountId, digite o URL do seu site (por exemplo, `adobe.com`).

   ![](assets/marketo-measure-integrations-with-adobe-launch-5.png)

   >[!NOTE]
   >
   >Esse campo não é a &quot;ID da conta&quot; na tabela Business_Prod.Business. Todas as atividades da Web do URL especificado (por exemplo, `adobe.com`) são mapeados para a variável [!DNL Marketo Measure] inquilino.

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-6.png)

1. Clique em **[!UICONTROL Regras]** e selecione **[!UICONTROL Criar nova regra]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-7.png)

1. Clique em **[!UICONTROL Adicionar]** botão em [!UICONTROL Eventos].

   ![](assets/marketo-measure-integrations-with-adobe-launch-8.png)

1. Na lista suspensa Extensão, selecione **[!UICONTROL Núcleo]**. Em seguida, na lista suspensa Tipo de evento, selecione **[!UICONTROL Biblioteca carregada (início da página)]**. Se você não atribuir um nome ao evento, será aplicado um nome padrão. Clique em **[!UICONTROL Manter alterações]** quando terminar.

   ![](assets/marketo-measure-integrations-with-adobe-launch-9.png)

1. Clique em **[!UICONTROL Adicionar]** em Ações.

   ![](assets/marketo-measure-integrations-with-adobe-launch-10.png)

1. Na lista suspensa Extensão, selecione **[!UICONTROL Bizible Analytics]**. Em seguida, no menu suspenso Tipo de ação, selecione **[!UICONTROL Inicializar]**. Se você não atribuir um nome à ação, será aplicado um padrão. Clique em **[!UICONTROL Manter alterações]** quando terminar.

   ![](assets/marketo-measure-integrations-with-adobe-launch-11.png)

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-12.png)
