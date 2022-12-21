---
unique-page-id: 18874519
description: Adição de [!DNL Marketo Measure] Script para o Lightbox Forms - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] Script para o Lightbox Forms
exl-id: fa9ce480-fc4f-4abd-8555-dbb74849747e
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '197'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] Script para o Lightbox Forms {#adding-marketo-measure-script-to-lightbox-forms}

Saiba como adicionar corretamente a variável [!DNL Marketo Measure] JavaScript para um formulário em um lightbox.

Um lightbox abre um formulário na frente do conteúdo quando o visitante executa uma ação específica (isto é, clicar em uma parte específica da página, gastar um determinado período de tempo na página etc.). Normalmente, pedimos apenas para ter a [!DNL Marketo Measure] JavaScript colocado no cabeçalho da página de aterrissagem, mas para formulários em um lightbox, há uma etapa extra necessária.

Como um formulário dentro de um lightbox é basicamente um formulário dentro de um iFrame, precisaremos do nosso script inserido dentro desse iFrame.

Primeiro, localize o iFrame no [!UICONTROL lightbox] O formulário é ativado.

![](assets/1.png)

Em seguida, coloque o [!DNL Marketo Measure] JavaScript no iFrame.

![](assets/2.png)

Por fim, quando o JavaScript é adicionado, recomendamos que você valide os envios de formulário seguindo estas instruções:

1. Copie o URL da landing page que contém a variável [!UICONTROL lightbox] formulário.
1. Abra um navegador Incógnito e cole o URL.
1. Envie o formulário usando um endereço de email exclusivo.
1. Confirme se o teste foi rastreado verificando seu CRM quanto ao endereço de email exclusivo usado, verifique se os dados do ponto de contato estão sendo preenchidos.
