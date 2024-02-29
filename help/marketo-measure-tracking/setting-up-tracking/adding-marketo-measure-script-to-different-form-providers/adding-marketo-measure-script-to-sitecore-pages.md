---
unique-page-id: 18874747
description: Adicionando [!DNL Marketo Measure] Script para páginas Sitecore - [!DNL Marketo Measure]
title: Adição de [!DNL Marketo Measure] script para páginas do Sitecore
exl-id: 87ce1857-7532-45a7-8c39-255c6118b50a
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '127'
ht-degree: 3%

---

# Adicionando [!DNL Marketo Measure] Script para páginas do Sitecore {#adding-marketo-measure-script-to-sitecore-pages}

Os sistemas de gerenciamento de conteúdo podem exigir etapas adicionais além da implementação padrão de scripts para [!DNL Marketo Measure] para reconhecer envios de formulários. O processo abaixo descreve como adicionar o [!DNL Marketo Measure] javascript para o [!DNL Sitecore] páginas.

Para sites com páginas Sitecore:

1. Faça logon no Sitecore e navegue até o site. Localize o [!UICONTROL Configuração] que reside no mesmo nível que a sua [!UICONTROL Início] item e [!UICONTROL Metadados] pasta.
1. Clique em **[!UICONTROL +]** ao lado da [!UICONTROL Configuração] pasta.
1. Clique em **[!UICONTROL +]** ao lado da [!UICONTROL Ferramentas] pasta.
1. Selecione o [!UICONTROL Javascript] item.
1. No [!UICONTROL Conteúdo] clique na guia **[!UICONTROL Bloquear e editar]** vincular para desbloquear o item para edição.
1. Localize o [!UICONTROL &#39;JavaScript&#39;] seção. Se ainda não tiver sido expandido, clique no link **[!UICONTROL +]**.
1. Insira nosso script: `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js"async=""></script>`
1. Clique em **[!UICONTROL Salvar]** no canto superior esquerdo.
