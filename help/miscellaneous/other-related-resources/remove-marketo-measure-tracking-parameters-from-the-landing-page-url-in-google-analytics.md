---
unique-page-id: 18874736
description: Remover [!DNL Marketo Measure] Parâmetros de Rastreamento da URL da Página de Aterrissagem na Google Analytics - [!DNL Marketo Measure]
title: Remover [!DNL Marketo Measure] Rastreamento de parâmetros do URL da página de destino no Google Analytics
exl-id: ec81ba4a-bb10-49fd-b62e-5a1bc9e1a023
feature: Tracking
TQID: https://experienceleague.adobe.com/vKhwWUT0VQ1Kr-3-dWVWt08S4848Q0Bn4HYrGgHawb8
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
topic_v2:
  - id: f4e6943a-c91a-4134-a2c7-f4f20cfff2f0
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 117
ht-degree: 8%

---

# Remover Parâmetros de Rastreamento [!DNL Marketo Measure] da URL da Página de Aterrissagem no Google Analytics {#remove-marketo-measure-tracking-parameters-from-the-landing-page-url-in-google-analytics}

Às vezes, ao visualizar páginas de aterrissagem em [!DNL Google Analytics], você desejará remover parâmetros de rastreamento das URLs. Caso contrário, elas serão divididas em linhas individuais.

Felizmente, isso é uma solução fácil.

1. Em [!DNL Google Analytics], vá para [!UICONTROL Admin] >[!UICONTROL Exibir Configurações] >[!UICONTROL Excluir Parâmetros de Consulta de URL].
1. Digite &quot;_bt,_bk,_bm,_bn,_bg&quot; na caixa (menos as aspas).
1. Role para baixo e clique em **[!UICONTROL Salvar]**.

   Lembre-se de que [!DNL Google Analytics] não reprocessa dados. Portanto, essa alteração só será refletida a partir de agora, e seus dados anteriores ainda serão exibidos com os parâmetros bt, bk e bm.
