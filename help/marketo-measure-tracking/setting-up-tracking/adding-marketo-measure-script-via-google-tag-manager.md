---
unique-page-id: 18874797
description: Adição de [!DNL Marketo Measure] Script via [!DNL Google Tag Manager] - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] Script via [!DNL Google Tag Manager]
exl-id: 539efb10-35cb-4146-8eea-728c3948a11e
source-git-commit: 82cc8269bfdb26b6acf039d0ce0e06564f5e2612
workflow-type: tm+mt
source-wordcount: '200'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] Script via [!DNL Google Tag Manager] {#adding-marketo-measure-script-via-google-tag-manager}

Ao instalar o [!DNL Marketo Measure] javascript, recomendamos [codificação rígida do script](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md){target="_blank"} diretamente no seu site. No entanto, se isso não for possível, você também poderá usar [!DNL Google Tag Manager] (GTM) para carregar o [!DNL Marketo Measure] JS. Observe que [!DNL Marketo Measure] O JS carregado por meio do GTM é susceptível à latência. A latência causa um atraso nos tempos de carregamento do script, o que pode resultar na ausência de cerca de 3 a 5% de todos os envios de formulário.

Se decidir adicionar nosso script via GTM, defina a variável [!DNL Marketo Measure] para a prioridade mais alta em sua ordem de acionamento e garanta que não haja scripts síncronos na frente da [!DNL Marketo Measure] para reduzir quaisquer efeitos da latência do GTM.

>[!NOTE]
>
>Use este [artigo de suporte da Google](https://support.google.com/tagmanager/answer/2772421?hl=en){target="_blank"} para saber mais.

## Como adicionar [!DNL Marketo Measure] JS via [!DNL Google Tag Manager] {#how-to-add-marketo-measure-js-via-google-tag-manager}

1. Abra o GTM e adicione o [!DNL Marketo Measure] no contêiner do site. Certifique-se de selecionar **[!UICONTROL Tag HTML personalizada]**.

1. Use o [!DNL Marketo Measure] abaixo e incorpore-o ao seu contêiner.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Adicionar uma regra de acionamento]** para que você possa dizer ao Google para carregar nosso trecho *Todas as páginas*.

1. Vá para a seção Visão geral do rascunho do contêiner à esquerda. Clique no botão para criar uma nova versão do contêiner e publicar as alterações.
