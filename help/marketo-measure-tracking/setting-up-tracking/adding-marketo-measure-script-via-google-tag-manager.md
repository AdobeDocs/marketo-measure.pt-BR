---
unique-page-id: 18874797
description: Adição de script do  [!DNL Marketo Measure]  via  [!DNL Google Tag Manager] - [!DNL Marketo Measure]  - Documentação do produto
title: Adição de script do  [!DNL Marketo Measure]  via  [!DNL Google Tag Manager]
exl-id: 539efb10-35cb-4146-8eea-728c3948a11e
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: ht
source-wordcount: '200'
ht-degree: 100%

---

# Adição de script do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#adding-marketo-measure-script-via-google-tag-manager}

Ao instalar o javascript do [!DNL Marketo Measure], recomendamos a [codificação rígida do script](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md){target="_blank"} diretamente no seu site. No entanto, se isso não for possível, você também poderá usar o [!DNL Google Tag Manager] (GTM) para carregar o JS do [!DNL Marketo Measure].  Observe que o JS do [!DNL Marketo Measure] carregado por meio do GTM está sujeito à latência. A latência causa um atraso nos tempos de carregamento do script, que pode resultar em perda de cerca de 3 a 5% de todos os envios de formulários.

Se decidir adicionar nosso script via GTM, defina o script do [!DNL Marketo Measure] para a prioridade mais alta em sua ordem de acionamento, e certifique-se de que não haja scripts síncronos na frente da tag do [!DNL Marketo Measure] para reduzir quaisquer efeitos da latência do GTM.

>[!NOTE]
>
>Leia este [artigo de suporte do Google](https://support.google.com/tagmanager/answer/2772421?hl=pt-BR){target="_blank"} para saber mais.

## Como adicionar JS do [!DNL Marketo Measure] via [!DNL Google Tag Manager] {#how-to-add-marketo-measure-js-via-google-tag-manager}

1. Abra o GTM e adicione o script do [!DNL Marketo Measure] no container do site. Certifique-se de selecionar **[!UICONTROL Tag HTML personalizada]**.

1. Use o script do [!DNL Marketo Measure] abaixo e incorpore-o ao seu container.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Adicionar uma regra de acionamento]** para que você possa instruir o Google a carregar nosso trecho em *Todas as páginas*.

1. Acesse a seção Visão geral do rascunho do container à esquerda. Clique no botão para criar uma nova versão do container e publicar as alterações.
