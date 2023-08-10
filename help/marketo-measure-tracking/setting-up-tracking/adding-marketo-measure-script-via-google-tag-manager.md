---
unique-page-id: 18874797
description: Adicionando [!DNL Marketo Measure] Script via [!DNL Google Tag Manager] - [!DNL Marketo Measure] - Documentação do produto
title: Adicionando [!DNL Marketo Measure] Script via [!DNL Google Tag Manager]
exl-id: 539efb10-35cb-4146-8eea-728c3948a11e
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '200'
ht-degree: 0%

---

# Adicionando [!DNL Marketo Measure] Script via [!DNL Google Tag Manager] {#adding-marketo-measure-script-via-google-tag-manager}

Ao instalar o [!DNL Marketo Measure] javascript, recomendamos [codificação rígida do script](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md){target="_blank"} diretamente no seu site. No entanto, se isso não for possível, você também poderá usar [!DNL Google Tag Manager] (GTM) para carregar a [!DNL Marketo Measure] JS Observe que [!DNL Marketo Measure] O JS carregado por meio do GTM é susceptível à latência. A latência causa um atraso nos tempos de carregamento do script, que pode resultar na ausência de cerca de 3 a 5% de todos os envios de formulários.

Se decidir adicionar nosso script via GTM, defina a [!DNL Marketo Measure] script para a prioridade mais alta em sua ordem de acionamento e verifique se não há scripts síncronos na frente do [!DNL Marketo Measure] para reduzir quaisquer efeitos da latência do GTM.

>[!NOTE]
>
>Use este [artigo de suporte do Google](https://support.google.com/tagmanager/answer/2772421?hl=en){target="_blank"} para saber mais.

## Como adicionar [!DNL Marketo Measure] JS via [!DNL Google Tag Manager] {#how-to-add-marketo-measure-js-via-google-tag-manager}

1. Abra o GTM e adicione o [!DNL Marketo Measure] no contêiner do site. Selecione **[!UICONTROL Tag HTML personalizada]**.

1. Use o [!DNL Marketo Measure] script abaixo e incorpore-o ao seu container.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Adicionar uma regra de acionamento]** para que você possa instruir a Google a carregar nosso trecho no *Todas as páginas*.

1. Acesse a seção Visão geral do rascunho do contêiner à esquerda. Clique no botão para criar uma nova versão do container e publicar as alterações.
