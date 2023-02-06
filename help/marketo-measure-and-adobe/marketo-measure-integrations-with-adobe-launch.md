---
description: '''[!DNL Marketo Measure] Integrações com o Adobe Launch - [!DNL Marketo Measure] - Documentação do produto'
title: '[!DNL Marketo Measure] Integrações com o Adobe Launch'
exl-id: 316ee8a8-b2d3-42e9-9ee5-c9b1d91c2769
source-git-commit: 19f670505358b04fb26620574b71c2af8d0d9847
workflow-type: tm+mt
source-wordcount: '334'
ht-degree: 0%

---

# [!DNL Marketo Measure] Integrações com o Adobe Launch {#marketo-measure-integrations-with-adobe-launch}

A extensão Adobe Launch foi projetada para [!DNL Marketo Measure] usuários que já usam o Adobe Launch em seu site. A extensão serve como uma solução de gerenciamento de tags que pode ser usada para configurar e carregar scripts dinamicamente em suas páginas, com base em determinados eventos e condições.

Quando instalado e configurado no Adobe Launch, a variável [!DNL Marketo Measure] a extensão carregará o script bizible.js nas páginas em que o script do Adobe Launch está presente. Isso permite que os profissionais de marketing adicionem bizible.js por meio da configuração do Adobe Launch, em vez de modificar explicitamente a página da Web para adicionar a tag de script bizible.js.

## Configurar a extensão do Adobe Launch {#configure-the-adobe-launch-extension}

>[!PREREQUISITES]
>
>Confira os seguintes links para saber mais sobre o Adobe Launch e suas extensões:
>
>* [[!DNL Marketo Measure] Extensão](https://experienceleague.adobe.com/docs/experience-platform/destinations/catalog/email/bizible.html?lang=en#catalog){target="_blank"}
>* [Visão geral do Adobe Launch](https://experienceleague.adobe.com/docs/launch-learn/implementing-in-websites-with-launch/index.html?lang=en#prerequisites){target="_blank"}
>* [Visão geral da extensão do Adobe Launch](https://experienceleague.adobe.com/docs/launch/using/extension-dev/overview.html?lang=en#extension-configuration){target="_blank"}


1. Crie uma propriedade seguindo as etapas [neste artigo](https://experienceleague.adobe.com/docs/platform-learn/implement-in-websites/configure-tags/create-a-property.html?lang=en#go-to-the-data-collection-interface){target="_blank"}.

1. Clique na propriedade que você acabou de criar.

   ![](assets/marketo-measure-integrations-with-adobe-launch-1.png)

1. Clique em **[!UICONTROL Extensões]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-2.png)

1. Clique no botão **[!UICONTROL Catálogo]** e pesquise por &quot;[!UICONTROL Bizible].&quot;

   ![](assets/marketo-measure-integrations-with-adobe-launch-3.png)

1. No [!UICONTROL Análise Bizible] bloco, clique em **[!UICONTROL Instalar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-4.png)

1. No campo AccountId da Bizible , digite o URL do seu site.

   ![](assets/marketo-measure-integrations-with-adobe-launch-5.png)

   >[!NOTE]
   >
   >Este campo não é a &quot;ID da conta&quot; na tabela Business_Prod.Business. Todas as atividades da Web do URL especificado serão mapeadas para a variável [!DNL Marketo Measure] inquilino.

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-6.png)

1. Clique em **[!UICONTROL Regras]**, em seguida selecione **[!UICONTROL Criar nova regra]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-7.png)

1. Clique no botão **[!UICONTROL Adicionar]** botão abaixo [!UICONTROL Eventos].

   ![](assets/marketo-measure-integrations-with-adobe-launch-8.png)

1. Na lista suspensa Extensão , selecione **[!UICONTROL Núcleo]**. Em seguida, na lista suspensa Tipo de evento , selecione **[!UICONTROL Biblioteca carregada (início da página)]**. Se você não fornecer um nome ao evento, um padrão será aplicado. Clique em **[!UICONTROL Manter alterações]** quando concluído.

   ![](assets/marketo-measure-integrations-with-adobe-launch-9.png)

1. Clique no botão **[!UICONTROL Adicionar]** em Ações.

   ![](assets/marketo-measure-integrations-with-adobe-launch-10.png)

1. Na lista suspensa Extensão , selecione **[!UICONTROL Análise Bizible]**. Em seguida, na lista suspensa Tipo de ação , selecione **[!UICONTROL Inicializar]**. Se você não fornecer um nome à sua ação, um padrão será aplicado. Clique em **[!UICONTROL Manter alterações]** quando concluído.

   ![](assets/marketo-measure-integrations-with-adobe-launch-11.png)

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/marketo-measure-integrations-with-adobe-launch-12.png)
