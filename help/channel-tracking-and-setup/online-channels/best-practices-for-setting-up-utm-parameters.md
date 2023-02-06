---
unique-page-id: 18874732
description: Práticas recomendadas para configurar parâmetros de UTM - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para configurar parâmetros de UTM
exl-id: 56019f41-b6ba-48c1-9bef-2a5f56d2d5f4
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '460'
ht-degree: 0%

---

# Práticas recomendadas para configurar parâmetros de UTM {#best-practices-for-setting-up-utm-parameters}

Os parâmetros de UTM são uma ótima maneira de destrinchar e analisar seus dados de marketing. [!DNL Marketo Measure] O usa e captura todos os parâmetros da UTM para preencher campos no Salesforce e no [!DNL Marketo Measure] aplicativo. Com essas informações, você poderá obter uma compreensão granular de onde vêm seus leads, oportunidades e negócios fechados/ganhos.

Você pode utilizar o [Construtor de URL da Google](https://support.google.com/analytics/answer/1033867?hl=en){target="_blank"} to set up your UTM parameters and add them to your links within your marketing efforts. Use this [Google Spreadsheet](https://docs.google.com/spreadsheets/d/1QCIr1WUJQHE68cA4VTks2XE7nxuryaUymCEy_23-Oew/edit#gid=0){target="_blank"} se quiser uma maneira mais fácil de rastrear todos os links de UTM.

## Valores de alto nível para cada parâmetro {#high-level-values-for-each-parameter}

**utm_medium**: Esse campo mapeia para o campo Médio. Use utm_medium para indicar o canal de alto nível.

Por exemplo: [!UICONTROL Social], CPC, email, web, orgânico

Não use esse campo para chamar o subcanal.

**utm_source**: Esse campo mapeia para o campo Fonte do ponto de contato. Use utm_source para definir o subcanal do qual o lead se origina.

Por exemplo: Facebook, Twitter, Linkedin, Drip_email, Email_blast, boletim informativo.

Mantenha simples. Não use esse parâmetro para indicar o tipo de anúncio, como redefinição de metas, patrocinado etc. Não adicione um utm_source = homepage, webdirect, site. [!DNL Marketo Measure] O preencherá automaticamente essas informações para você.

**utm_campaign**: Este campo mapeia para o Nome da campanha de anúncio. Use utm_campaign para denotar o título da campanha como ela existe na plataforma do anúncio ou como é chamada internamente.

Esse também é um bom parâmetro para indicar localização geográfica, tipo de rede de anúncios (pesquisa de exibição v.) etc.

Recomendamos usar sublinhados em vez de espaços e evitar usar pontuação. Isso reduz as chances de codificação de erros pelos navegadores ao ler seus parâmetros.

Por exemplo: AU_Idea_for_an_App_50k

**utm_content**: Isso mapeia para Conteúdo de anúncio. Use o Título da Publicidade no parâmetro utm_content. Se for uma publicidade em imagem, use o título da publicidade e inclua as dimensões da publicidade.

Por exemplo: [título da publicidade] 200x400px

**utm_term**: Isso mapeia para Texto de palavra-chave. Use esse parâmetro para denotar a palavra-chave relacionada ao acionamento da publicidade.

Se não houver uma palavra-chave relacionada à publicidade, deixe este parâmetro em branco.

Por exemplo: Ideias do aplicativo iPhone

**Mantenha simples e sucinto. Não duplique esforços, termos e canais.**

Imaginamos a hierarquia de UTM da seguinte maneira:

Médio > [!UICONTROL Origem] > [!UICONTROL Campanha] > [!UICONTROL Conteúdo/Termo]

Por exemplo: Se uma [!UICONTROL display] e for colocado no Facebook, recomendamos o seguinte:

fakewebsite.com/

?utm_medium=social

&amp;utm_source=facebook

&amp;utm_campaign=Display_campaign_ID

&amp;utm_content=content_of_campaign

Observe que os termos/canais não são duplicados e utm_term não é usado neste caso.

Em caso de dúvidas, entre em contato com o Gerente de sucesso do cliente ou [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
