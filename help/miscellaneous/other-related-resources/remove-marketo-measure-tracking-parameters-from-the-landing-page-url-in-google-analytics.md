---
unique-page-id: 18874736
description: Remover [!DNL Marketo Measure] Rastreamento de parâmetros do URL da página inicial no Google Analytics - [!DNL Marketo Measure] - Documentação do produto
title: Remover [!DNL Marketo Measure] Rastreamento de parâmetros do URL da página inicial no Google Analytics
exl-id: ec81ba4a-bb10-49fd-b62e-5a1bc9e1a023
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '120'
ht-degree: 0%

---

# Remover [!DNL Marketo Measure] Rastreamento de parâmetros do URL da página inicial no Google Analytics {#remove-marketo-measure-tracking-parameters-from-the-landing-page-url-in-google-analytics}

Às vezes, ao visualizar páginas iniciais em [!DNL Google Analytics], você desejará remover parâmetros de rastreamento dos URLs. Caso contrário, eles serão divididos em linhas individuais.

Felizmente, este é um conserto fácil.

1. Em [!DNL Google Analytics], vá para [!UICONTROL Administrador] >[!UICONTROL Exibir configurações] >[!UICONTROL Excluir parâmetros de consulta de URL].
1. Digite &quot;_bt,_bk,_bm,_bn,_bg&quot; na caixa (menos as aspas).
1. Role para baixo e clique em **[!UICONTROL Salvar]**.

   Lembre-se [!DNL Google Analytics] não reprocessa dados. Portanto, essa alteração só será refletida ao avançar, e seus dados anteriores ainda serão exibidos com os parâmetros bt, bk e bm.
