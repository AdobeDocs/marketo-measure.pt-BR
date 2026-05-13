---
unique-page-id: 18874747
description: Adicionando  [!DNL Marketo Measure] Script às Páginas Sitecore - [!DNL Marketo Measure]
title: Adição de [!DNL Marketo Measure] script para páginas do Sitecore
exl-id: 87ce1857-7532-45a7-8c39-255c6118b50a
feature: Tracking
TQID: https://experienceleague.adobe.com/sXO-rCY3NbxX0AztYt-o3f-tpJFlrncLIb7-NvEjZO0
product_v2: id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
topic_v2: id: a004cc84-67b9-4a33-a3a7-8ec7273ef4dcid: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 126
ht-degree: 3%

---

# Adicionando Script [!DNL Marketo Measure] às Páginas Sitecore {#adding-marketo-measure-script-to-sitecore-pages}

Os sistemas de gerenciamento de conteúdo podem exigir etapas adicionais além da implementação de script padrão para [!DNL Marketo Measure] para reconhecer envios de formulários. O processo abaixo descreve como adicionar o javascript [!DNL Marketo Measure] às suas páginas [!DNL Sitecore].

Para sites com páginas Sitecore:

1. Faça logon no Sitecore e navegue até o site. Localize a pasta [!UICONTROL Configuração] que reside no mesmo nível do item [!UICONTROL Página Inicial] e da pasta [!UICONTROL Metadados].
1. Clique no **[!UICONTROL +]** ao lado da pasta [!UICONTROL Configuração].
1. Clique no **[!UICONTROL +]** ao lado da pasta [!UICONTROL Ferramentas].
1. Selecione o item [!UICONTROL Javascript].
1. Na guia [!UICONTROL Conteúdo], clique no link **[!UICONTROL Bloquear e Editar]** para desbloquear o item para edição.
1. Localize a seção [!UICONTROL &#39;JavaScript&#39;]. Se ainda não tiver sido expandido, clique no **[!UICONTROL +]**.
1. Digite nosso script: `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js"async=""></script>`
1. Clique em **[!UICONTROL Salvar]** no canto superior esquerdo.
