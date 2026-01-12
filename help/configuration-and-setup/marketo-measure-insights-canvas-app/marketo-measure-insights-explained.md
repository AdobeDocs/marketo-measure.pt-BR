---
description: '[!DNL Marketo Measure] Insights Explicados - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Insights explicados'
exl-id: d479a15f-4c92-4302-8ce8-6487645012e1
feature: Reporting
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '487'
ht-degree: 0%

---


# [!DNL Marketo Measure] Insights explicados {#marketo-measure-insights-explained}

Saiba mais sobre o modo de exibição Insights do [!DNL Marketo Measure] em [!DNL Salesforce], incluindo o que os diferentes ícones representam e como usar o recurso. Este recurso é muito útil para ver as primeiras 20 sessões de um cliente potencial, contato ou conta.

Depois que alguém é rastreado pelo JavaScript [!DNL Marketo Measure] e preenche um formulário no seu site, essa pessoa se torna um líder no seu sistema e seus dados de marketing digital são enviados para a sua organização da Salesforce (SFDC). Quando isso ocorrer, você verá os dados do ponto de contato preenchidos na seção Insights do cliente potencial [!DNL Marketo Measure] (um aplicativo da Tela) nos Objetos de cliente potencial/contato/oportunidade/conta.

Primeiro, você vê, na parte intermediária de seus insights, o número de sessões que a pessoa teve em seu site. Você pode rolar por essas sessões e navegar como desejar.

![Lista de sessões do Insights mostrando o número de sessões rastreadas](assets/1.png)

Você pode ver o acúmulo de todas as sessões se clicar em &quot;Tudo&quot; na parte superior central dos insights. Lá você entende as datas das sessões individuais, que canal ou fonte levou a isso e um conjunto de ícones especificando mais informações.

A primeira coisa que você vê são os ícones FT ou LC. Eles representam a posição do ponto de contato das sessões listadas. Especificamente, FT significa First Touch (Primeiro contato) e LC significa Lead Creation (Criação de lead). Você pode ter várias sessões, mas somente um ponto de contato pode ser o FT ou o LC. Você nunca encontrará vários FTs ou LCs associados a uma pessoa.

Os ícones que se parecem com papel indicam que ocorreu uma exibição de página na sessão. É provável que cada sessão inclua esse ícone.

![Modo de exibição de pacote cumulativo de insights com posições de ponto de contato e detalhes do canal](assets/2.png)

O ícone que se parece com um béquer indica que um experimento de teste A/B ocorreu. Neste ponto, integramos com o Otimizely e o VWO. Com essa integração, podemos impulsionar o experimento e a variação que o usuário viu em sua sessão específica.

![Lista de sessões de Insights destacando o ícone do copos de teste A/B](assets/3.png)

Se você clicar em qualquer sessão específica (pode fazer isso clicando na data real da sessão ou na parte superior intermediária das sessões agrupadas), será possível ver os detalhes da sessão. Em cada sessão, você pode ver todas as páginas específicas que o usuário viu ordenadas por data e hora.

![Painel de detalhes da sessão mostrando exibições de página em uma sessão](assets/4.png)

No lado direito de cada sessão, você pode ver mais dados de marketing granulares que estão enviando os campos [!DNL Marketo Measure] da sua SFDC. Neste exemplo, você pode ver Grupo de anúncios, Conteúdo de anúncios, Campanha, Palavra-chave, Medium. Você também pode rolar a tela para baixo para ver mais dos [!DNL Marketo Measure] dados que fornecemos.

Por fim, uma vez que alguém tenha uma miríade de sessões, você poderá usar alguns filtros em [!UICONTROL Insights] para procurar partes específicas do envolvimento no site. Você pode filtrar por [!UICONTROL Posição do ponto de contato], por exemplo.

Você também pode pesquisar por Exibições de página, Testes AB ou Forms.
