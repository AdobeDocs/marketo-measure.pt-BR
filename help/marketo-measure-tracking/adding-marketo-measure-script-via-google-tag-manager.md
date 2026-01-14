---
description: Adicionando  [!DNL Marketo Measure] script via [!DNL Google Tag Manager] orientação para usuários do Marketo Measure
title: Adição de script do  [!DNL Marketo Measure]  via  [!DNL Google Tag Manager]
exl-id: 539efb10-35cb-4146-8eea-728c3948a11e
feature: Tracking
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '197'
ht-degree: 83%

---

# Adição de script do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#adding-marketo-measure-script-via-google-tag-manager}

Ao instalar o JavaScript [!DNL Marketo Measure], é recomendável [codificar o script](/help/marketo-measure-tracking/adding-marketo-measure-script.md){target="_blank"} diretamente no site. Se isso não for possível, use o [!DNL Google Tag Manager] (GTM) para carregar o JS do [!DNL Marketo Measure].  Observe que o JS do [!DNL Marketo Measure] carregado por meio do GTM está sujeito à latência. A latência causa um atraso nos tempos de carregamento do script, que pode resultar em perda de cerca de 3 a 5% de todos os envios de formulários.

Se decidir adicionar o script via GTM, defina o script do [!DNL Marketo Measure] com a prioridade mais alta em sua ordem de acionamento e certifique-se de que não haja scripts síncronos na frente da tag do [!DNL Marketo Measure], para reduzir quaisquer efeitos de latência do GTM.

>[!NOTE]
>
>Use este [artigo de suporte da Google](https://support.google.com/tagmanager/answer/2772421?hl=pt-BR){target="_blank"} para saber mais.

## Como adicionar JS do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#how-to-add-marketo-measure-js-via-google-tag-manager}

1. Abra o GTM e adicione o script do [!DNL Marketo Measure] no container do site. Certifique-se de selecionar **[!UICONTROL Tag HTML personalizada]**.

1. Use o script do [!DNL Marketo Measure] abaixo e incorpore-o ao seu container.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Adicionar uma regra de acionamento]** para que você possa instruir o Google a carregar nosso trecho em *Todas as páginas*.

1. Acesse a seção Visão geral do rascunho do container à esquerda. Clique no botão para criar uma versão do container e publicar as alterações.
