---
unique-page-id: 18874747
description: Adição de [!DNL Marketo Measure] Script para páginas do Sitecore - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] Script para páginas do Sitecore
exl-id: 87ce1857-7532-45a7-8c39-255c6118b50a
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '129'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] Script para páginas do Sitecore {#adding-marketo-measure-script-to-sitecore-pages}

Os sistemas de gerenciamento de conteúdo podem exigir etapas adicionais além da implementação padrão de script para [!DNL Marketo Measure] para reconhecer os envios de formulário. O processo abaixo descreve como adicionar a variável [!DNL Marketo Measure] javascript para sua [!DNL Sitecore] páginas.

Para sites com páginas do Sitecore:

1. Faça logon no Sitecore e navegue até seu site. Localize a variável [!UICONTROL Configuração] pasta que reside no mesmo nível que sua [!UICONTROL Início] item e [!UICONTROL Metadados] pasta.
1. Clique no botão **[!UICONTROL +]** ao lado do [!UICONTROL Configuração] pasta.
1. Clique no botão **[!UICONTROL +]** ao lado do [!UICONTROL Ferramentas] pasta.
1. Selecione o [!UICONTROL Javascript] item.
1. No [!UICONTROL Conteúdo] clique no botão **[!UICONTROL Bloquear e editar]** link para desbloquear o item para edição.
1. Encontre a [!UICONTROL &#39;JavaScript&#39;] seção. Se ele ainda não tiver sido expandido, clique no botão **[!UICONTROL +]**.
1. Insira o nosso script: `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js"async=""></script>`
1. Clique em **[!UICONTROL Salvar]** no canto superior esquerdo.
