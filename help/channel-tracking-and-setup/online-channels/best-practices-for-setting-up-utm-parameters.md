---
unique-page-id: 18874732
description: Práticas recomendadas para configurar parâmetros UTM - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para configurar parâmetros de UTM
exl-id: 56019f41-b6ba-48c1-9bef-2a5f56d2d5f4
feature: UTM Parameters
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '463'
ht-degree: 3%

---

# Práticas recomendadas para configurar parâmetros de UTM {#best-practices-for-setting-up-utm-parameters}

Parâmetros UTM são uma ótima maneira de cortar e dividir seus dados de marketing. [!DNL Marketo Measure] O usa e captura todos os parâmetros UTM para preencher campos no Salesforce e na [!DNL Marketo Measure] aplicativo. Com essas informações, você poderá obter uma compreensão detalhada de onde vêm seus leads, oportunidades e ofertas fechadas/conquistadas.

Você pode utilizar o [Construtor de URL Google](https://support.google.com/analytics/answer/1033867?hl=en){target="_blank"} to set up your UTM parameters and add them to your links within your marketing efforts. Use this [Google Spreadsheet](https://docs.google.com/spreadsheets/d/1QCIr1WUJQHE68cA4VTks2XE7nxuryaUymCEy_23-Oew/edit#gid=0){target="_blank"} se quiser uma maneira mais fácil de rastrear todos os links UTM.

## Valores de alto nível para cada parâmetro {#high-level-values-for-each-parameter}

**utm_medium**: este campo mapeia para o campo Médio. Use utm_medium para indicar o canal de alto nível.

por exemplo, [!UICONTROL Social], CPC, email, Web, orgânico

Não use esse campo para chamar o subcanal.

**utm_source**: este campo mapeia para o campo Origem do ponto de contato. Use utm_source para definir o subcanal do qual o lead se origina.

Por exemplo, Facebook, Twitter, Linkedin, Drip_email, Email_blast, boletim informativo.

Mantenha simples. Não use esse parâmetro para indicar o tipo de anúncio, como redirecionamento, patrocinado etc. Não adicione um utm_source = homepage, webdirect, site. [!DNL Marketo Measure] O preencherá automaticamente essas informações para você.

**utm_campaign**: este campo mapeia para o Nome da campanha de publicidade. Use utm_campaign para denotar o título da campanha como ele existe na plataforma de publicidade, ou como ele é referido internamente.

Também é um bom parâmetro para indicar Geolocalização, Tipo de rede de anúncio (exibição v. pesquisa) etc.

Recomendamos usar sublinhados em vez de espaços e evitar o uso de pontuação. Isso reduz as chances de erros de codificação pelos navegadores ao ler seus parâmetros.

Por exemplo, AU_Idea_for_an_App_50k

**utm_content**: mapeia para o Conteúdo de publicidade. Use o Título do anúncio no parâmetro utm_content. Se for um anúncio de imagem, use o título do anúncio e inclua as dimensões do anúncio.

por exemplo, [título do anúncio] 200x400px

**utm_term**: isso mapeia para Texto de palavra-chave. Use esse parâmetro para indicar a palavra-chave relacionada ao acionamento do anúncio.

Se não houver palavra-chave relacionada ao anúncio, deixe esse parâmetro em branco.

por exemplo, Ideias do aplicativo iPhone

**Mantenha simples e sucinto. Não duplique esforços, termos e canais.**

Imaginamos a hierarquia UTM da seguinte maneira:

Médio > [!UICONTROL Origem] > [!UICONTROL Campaign] > [!UICONTROL Conteúdo/Termo]

por exemplo, Se um [!UICONTROL exibição] ad for colocado no Facebook, recomendamos o seguinte:

fakewebsite.com/

?utm_medium=social

&amp;utm_source=facebook

&amp;utm_campaign=Display_campaign_ID

&amp;utm_content=content_of_campaign

Observe que os termos/canal não são duplicados e utm_term não é usado nesse caso.

Em caso de dúvidas, entre em contato com a Equipe de conta do Adobe (seu Gerente de conta) ou [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
