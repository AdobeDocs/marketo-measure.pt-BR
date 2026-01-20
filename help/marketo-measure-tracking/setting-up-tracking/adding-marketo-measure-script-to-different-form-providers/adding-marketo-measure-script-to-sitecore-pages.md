---
unique-page-id: 18874747
description: Adicionando  [!DNL Marketo Measure] Script às Páginas Sitecore - [!DNL Marketo Measure]
title: Adição de [!DNL Marketo Measure] script para páginas do Sitecore
exl-id: 87ce1857-7532-45a7-8c39-255c6118b50a
feature: Tracking
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '127'
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
