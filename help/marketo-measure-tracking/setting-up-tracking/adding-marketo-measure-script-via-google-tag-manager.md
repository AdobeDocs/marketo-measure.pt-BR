---
unique-page-id: 18874797
description: Adicionando [!DNL Marketo Measure] Script via [!DNL Google Tag Manager] - [!DNL Marketo Measure]
title: Adição de script do  [!DNL Marketo Measure]  via  [!DNL Google Tag Manager]
exl-id: 539efb10-35cb-4146-8eea-728c3948a11e
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '192'
ht-degree: 44%

---

# Adição de script do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#adding-marketo-measure-script-via-google-tag-manager}

Ao instalar o [!DNL Marketo Measure] JavaScript, é recomendável que você [codificação rígida do script](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md){target="_blank"} diretamente no site. Se isso não for possível, você também poderá usar [!DNL Google Tag Manager] (GTM) para carregar a [!DNL Marketo Measure] JS Observe que [!DNL Marketo Measure] O JS carregado por meio do GTM é susceptível à latência. A latência causa um atraso nos tempos de carregamento do script, que pode resultar em perda de cerca de 3 a 5% de todos os envios de formulários.

Se decidir adicionar nosso script via GTM, defina a [!DNL Marketo Measure] script para a prioridade mais alta em sua ordem de acionamento e verifique se não há scripts síncronos na frente do [!DNL Marketo Measure] para reduzir quaisquer efeitos da latência do GTM.

>[!NOTE]
>
>Usar este [artigo de suporte do Google](https://support.google.com/tagmanager/answer/2772421?hl=pt-BR){target="_blank"} para saber mais.

## Como adicionar JS do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#how-to-add-marketo-measure-js-via-google-tag-manager}

1. Abra o GTM e adicione o script do [!DNL Marketo Measure] no container do site. Certifique-se de selecionar **[!UICONTROL Tag HTML personalizada]**.

1. Use o script do [!DNL Marketo Measure] abaixo e incorpore-o ao seu container.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Adicionar uma regra de acionamento]** para que você possa instruir o Google a carregar nosso trecho em *Todas as páginas*.

1. Acesse a seção Visão geral do rascunho do container à esquerda. Clique no botão para criar uma versão do container e publicar as alterações.
