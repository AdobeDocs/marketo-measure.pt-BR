---
unique-page-id: 18874736
description: Remover [!DNL Marketo Measure] Parâmetros de rastreamento do URL da landing page no Google Analytics - [!DNL Marketo Measure]
title: Remover [!DNL Marketo Measure] Rastreamento de parâmetros do URL da landing page no Google Analytics
exl-id: ec81ba4a-bb10-49fd-b62e-5a1bc9e1a023
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '115'
ht-degree: 9%

---

# Remover [!DNL Marketo Measure] Parâmetros de rastreamento do URL da landing page no Google Analytics {#remove-marketo-measure-tracking-parameters-from-the-landing-page-url-in-google-analytics}

Às vezes, ao visualizar landing pages no [!DNL Google Analytics], você removerá os parâmetros de rastreamento dos URLs. Caso contrário, elas serão divididas em linhas individuais.

Felizmente, isso é uma solução fácil.

1. Entrada [!DNL Google Analytics], vá para [!UICONTROL Admin] >[!UICONTROL Configurações de exibição] >[!UICONTROL Excluir parâmetros de consulta de URL].
1. Digite &quot;_bt,_bk,_bm,_bn,_bg&quot; na caixa (menos as aspas).
1. Role para baixo e clique em **[!UICONTROL Salvar]**.

   Lembre-se [!DNL Google Analytics] O não reprocessa dados. Portanto, essa alteração só será refletida a partir de agora, e seus dados anteriores ainda serão exibidos com os parâmetros bt, bk e bm.
