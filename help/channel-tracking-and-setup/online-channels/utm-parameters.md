---
unique-page-id: 18874606
description: Parâmetros de UTM -  [!DNL Marketo Measure]
title: Parâmetros do UTM
exl-id: 2b20f3c4-1f39-4ac5-bad1-cb1d630d60e9
feature: UTM Parameters
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: ht
source-wordcount: '926'
ht-degree: 100%

---

# Parâmetros do UTM {#utm-parameters}

Marcar URLs é uma maneira simples e eficaz de capturar dados sobre suas iniciativas de marketing digital. É o processo de adicionar parâmetros ao final dos URLs que coletam e registram dados. Os parâmetros mais usados são os Módulos de rastreamento de Urchin (UTMs), compatíveis com o Google. Há cinco parâmetros principais de UTM disponíveis: Meio, Origem, Campanha, Conteúdo e Termo. Eles são discutidos com mais detalhes na próxima seção.

Você pode adicionar parâmetros de UTM manualmente aos URLs ou anexá-los por meio do recurso de marcação automática de determinadas plataformas, como o AdWords. A marcação automática automatiza o processo de anexação de parâmetros a URLs. Há também a opção de [Construtores de URL](https://ga-dev-tools.web.app/campaign-url-builder/){target="_blank"} para acelerar a marcação manual de URLs. Com um construtor de URL, basta especificar os valores que deseja usar para cada parâmetro e o construtor formatará o URL.

## O que são parâmetros de UTM? {#what-are-utm-parameters}

Para entender como os parâmetros do UTM funcionam, vamos observar um URL típico sem UTMs:

`http://www.adobe.com`

Agora, vamos verificar um URL com UTMs:

`http://www.adobe.com?utm_medium=socialmedia&utm_source =facebook&utm_campaign=seasonal-sale&utm_content=photo-400x700px`

O segundo link contém mais texto. Os parâmetros de UTM sempre seguem o domínio de nível superior (“.com” neste exemplo) e começam com um ponto de interrogação. Depois disso, a ordem dos parâmetros não importa, mas é recomendável seguir uma convenção de nomeação consistente. Você deve colocar um “e comercial” entre os parâmetros para separar cada UTM. Agora podemos entrar em mais detalhes sobre o que cada parâmetro representa.

Saiba mais sobre [práticas recomendadas para configurar parâmetros de UTM](/help/channel-tracking-and-setup/online-channels/best-practices-for-setting-up-utm-parameters.md).

**utm_medium**

* O “Meio” identifica os veículos que você usa no marketing da empresa.
* Ele responde à pergunta: “Como eles estão chegando até você?”
* Ele indica o canal de nível mais alto.
* Redes sociais, email, pesquisa orgânica e pesquisa paga são exemplos de valores médios em potencial.
* Esse parâmetro mapeia dados para o [!DNL Marketo Measure] Campo “Meio”.
* _[!DNL Marketo Measure]Prática recomendada:_ não use esse campo para chamar um subcanal; caso contrário, poderá ocorrer dificuldades ao gerar relatórios no canal real. Use-o para identificar seu veículo ou canal de marketing. Por exemplo, se você deseja usar emails para comercializar seu produto, o meio é email.

**utm_source**

* Origem identifica o subcanal que é a origem do seu tráfego.
* Ele responde à pergunta: “De onde vem essa pessoa?”
* Em um exemplo de rede social, a origem do tráfego é a plataforma de mídia social que está sendo usada.
   * Neste exemplo, [!DNL Facebook] é o Valor de origem. Outros exemplos são Twitter e Instagram. Se a mídia de UTM for [!DNL Paid Search], por outro lado, a Origem do UTM pode ser AdWords ou BingAds.

* Esse parâmetro mapeia para o [!DNL Marketo Measure] campo “Origem do touchpoint” no SFDC.
* Prática recomendada do _[!DNL Marketo Measure]:_ esse parâmetro rastreia a origem do tráfego, portanto não é adequado usá-lo para indicar o tipo de anúncio, por exemplo: redirecionamento, patrocinado etc. É melhor usá-lo para rastrear o subcanal de nível superior. Lembre-se, você está respondendo a pergunta “de onde vem meu tráfego?” Você está procurando o referenciador. Neste exemplo, a fonte do UTM é o local onde seu anúncio está localizado (não a página da Web propriamente dita, pois é automaticamente rastreada fora das tags). Se você estiver rastreando uma campanha de email de entrega, o email de entrega é a origem.

**utm_campaign**

* A campanha é usada para identificar uma campanha de marketing específica.
* Ela responde à pergunta: “Por que elas estão vindo até você?”
* Use essa tag para determinar o nome da campanha de publicidade como ela existe no [!DNL Google AdWords] ou no [!DNL BingAds] ou para indicar o nome pelo qual você identifica a campanha internamente. Você pode até mesmo usar essa tag para especificar outras informações, como localização geográfica ou tipo de rede de anúncios.
* Esse parâmetro mapeia para o [!DNL Marketo Measure] “Campo Nome da campanha de anúncio” no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: ao determinar nomes de campanha, evite usar marcas de pontuação ou espaços vazios entre as palavras, pois eles podem gerar erros de codificação do navegador. Para obter melhores resultados, use sublinhados.

**utm_content**

* Use o parâmetro Conteúdo do UTM quando quiser rastrear mais de uma parte de marketing existente em uma única página da Web. Por exemplo, se você tiver um botão “Solicitar uma demonstração” e um botão “Inscrever-se no nosso boletim informativo semanal” e quiser saber qual está gerando mais tráfego, nomeie cada um e use uma tag de Conteúdo de UTM para rastreá-los. O nome de cada parte do “conteúdo” é o valor da tag.
* Esse parâmetro mapeia para o [!DNL Marketo Measure] campo “Conteúdo do anúncio” no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: é um valor opcional, mas o [!DNL Marketo Measure] recomenda usá-lo. Essa tag está associada ao título do anúncio ou do elemento de marketing que você deseja rastrear. Se você usar um anúncio em imagem, escreva as dimensões da imagem em seu título.

**utm_term**

* Termo é semelhante ao parâmetro Conteúdo do UTM. O termo é útil para identificar palavras-chave em anúncios de campanhas pagas. Se você usar o recurso de marcação automática, isso será feito para você. Se você não estiver usando o recurso de marcação automática da plataforma de publicidade, adicione com cuidado todas as palavras-chave que deseja rastrear.
* Esse parâmetro mapeia para o [!DNL Marketo Measure] campo “Texto de palavra-chave” no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: A tag Termo do UTM é opcional, mas excelente para rastrear palavras-chave. Verifique a ortografia e evite usar caracteres especiais. Se mais de uma palavra for necessária, tente usar sublinhados ou nenhum espaço.

Cada parâmetro reúne informações relevantes para o valor atribuído. O valor de cada tag permite rastrear e classificar todas as campanhas digitais e responder às perguntas: onde, como e por quê?

Aqui está um gráfico dos parâmetros do UTM [!DNL Marketo Measure] As análises e o campo do touchpoint correspondente ao qual estão vinculadas:

| **Parâmetro do UTM** | **Campo [!DNL Marketo Measure] correspondente** |
|---|---|
| utm_medium | Meio |
| utm_source | Origem do touchpoint |
| utm_campaign | Nome da campanha publicitária |
| utm_content | Conteúdo do anúncio |
| utm_term | Texto da palavra-chave |
