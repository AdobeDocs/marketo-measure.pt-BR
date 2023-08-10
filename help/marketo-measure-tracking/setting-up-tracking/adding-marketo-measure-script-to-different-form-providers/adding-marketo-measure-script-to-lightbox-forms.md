---
unique-page-id: 18874519
description: Adicionando [!DNL Marketo Measure] Script para o Lightbox Forms - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] script para formulários do Lightbox
exl-id: fa9ce480-fc4f-4abd-8555-dbb74849747e
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '197'
ht-degree: 5%

---

# Adição de[!DNL Marketo Measure]script para formulários do Lightbox {#adding-marketo-measure-script-to-lightbox-forms}

Saiba como adicionar corretamente a variável [!DNL Marketo Measure] JavaScript para um formulário em uma lightbox.

Uma lightbox abre um formulário na frente do conteúdo quando o visitante executa uma ação específica (ou seja, clicando em uma parte específica da página, gastando um determinado período na página etc.). Normalmente, pedimos apenas para ter o [!DNL Marketo Measure] O JavaScript foi colocado no cabeçalho da página de aterrissagem, mas para formulários em um lightbox, é necessária uma etapa extra.

Como um formulário em um lightbox é basicamente um formulário em um iFrame, precisaremos que nosso script seja colocado dentro desse iFrame.

Primeiro, localize o iFrame no [!UICONTROL lightbox] form vive em.

![](assets/1.png)

Em seguida, posicione o [!DNL Marketo Measure] JavaScript no iFrame.

![](assets/2.png)

Por fim, quando o JavaScript for adicionado, recomendamos que você valide se os envios de formulários estão sendo rastreados seguindo estas orientações:

1. Copie o URL da landing page que contém a [!UICONTROL lightbox] formulário.
1. Abra um navegador Incógnito e cole o URL.
1. Envie o formulário usando um endereço de email exclusivo.
1. Confirme se o teste foi rastreado verificando seu CRM em busca do endereço de email exclusivo usado, verifique se os dados do ponto de contato estão sendo preenchidos.
