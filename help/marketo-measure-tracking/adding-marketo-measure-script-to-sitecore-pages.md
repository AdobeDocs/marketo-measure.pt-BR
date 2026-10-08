---
description: Adicionando o script [!DNL Marketo Measure] às orientações das Páginas Sitecore para usuários do Marketo Measure
title: Adicionando Script [!DNL Marketo Measure] às Páginas Sitecore
exl-id: 87ce1857-7532-45a7-8c39-255c6118b50a
feature: Tracking
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '133'
ht-degree: 0%
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
