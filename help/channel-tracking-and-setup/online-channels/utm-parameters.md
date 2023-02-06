---
unique-page-id: 18874606
description: Parâmetros do UTM - [!DNL Marketo Measure] - Documentação do produto
title: Parâmetros do UTM
exl-id: 2b20f3c4-1f39-4ac5-bad1-cb1d630d60e9
source-git-commit: 65e7f8bc198ceba2f873ded23c94601080ad0546
workflow-type: tm+mt
source-wordcount: '946'
ht-degree: 0%

---

# Parâmetros do UTM {#utm-parameters}

Marcar URLs é uma maneira simples e eficaz de capturar dados sobre seus esforços de marketing digital. É o processo de adicionar parâmetros ao final dos URLs que coletam e registram dados. Os parâmetros mais usados são os Módulos de rastreamento de Urchin (UTMs), compatíveis com o Google. Há cinco parâmetros principais de UTM disponíveis: Meio, Fonte, Campanha, Conteúdo e Termo. Eles são discutidos com mais detalhes na próxima seção.

Os parâmetros de UTM podem ser adicionados manualmente aos URLs ou anexados por meio da marcação automática com determinadas plataformas, como o AdWords, por exemplo. A marcação automática automatiza o processo de anexação de parâmetros a URLs. Há também a opção de [Construtores de URL](https://ga-dev-tools.appspot.com/campaign-url-builder/){target="_blank"} para acelerar a marcação manual de URLs. Com um construtor de URL, basta especificar os valores a serem usados para cada parâmetro e o construtor formatará o URL para você.

## O que são parâmetros de UTM? {#what-are-utm-parameters}

Para entender como os parâmetros do UTM funcionam, vamos observar um URL típico sem UTMs:

`http://www.adobe.com`

Agora, vamos verificar um URL com UTMs:

`http://www.adobe.com?utm_medium=socialmedia&utm_source =facebook&utm_campaign=seasonal-sale&utm_content=photo-400x700px`

Como você pode ver, o segundo link contém muito mais texto. Os parâmetros de UTM sempre seguem o domínio de nível superior (.com neste exemplo) e começam com um ponto de interrogação. Depois disso, a ordem dos parâmetros não importa, mas é recomendável seguir uma convenção de nomenclatura consistente. É necessário colocar os E-mails entre cada parâmetro para separar cada UTM. Agora podemos entrar em mais detalhes sobre o que cada parâmetro representa.

Saiba mais sobre [práticas recomendadas para configurar parâmetros de UTM](/help/channel-tracking-and-setup/online-channels/best-practices-for-setting-up-utm-parameters.md).

**utm_medium**

* Meio identifica os veículos que você está usando para comercializar sua empresa.
* Ele responde à pergunta: &quot;Como eles estão chegando até você?&quot;
* Ele indica o canal de nível mais alto.
* Redes sociais, email, pesquisa orgânica e pesquisa paga são exemplos de valores médios em potencial.
* Esse parâmetro mapeia dados para o [!DNL Marketo Measure] Campo &#39;Médio&#39;.
* _[!DNL Marketo Measure]Prática recomendada:_ Não use esse campo para chamar um subcanal; caso contrário, poderá ocorrer dificuldades ao gerar relatórios no canal real. Use-o para identificar seu veículo ou canal de marketing. Por exemplo, se você deseja usar emails para comercializar seu produto, a mídia é email.

**utm_source**

* A fonte identifica o subcanal que é a fonte do seu tráfego.
* Ele responde à pergunta: &quot;De onde vem essa pessoa?&quot;
* Em um exemplo de mídia social, a fonte do tráfego é a plataforma de mídia social que está sendo usada.
   * Neste exemplo, [!DNL Facebook] é o Valor de Origem. Outros exemplos são Twitter e Instagram. Se a mídia de UTM for [!DNL Paid Search], por outro lado, a Fonte da UTM pode ser AdWords ou BingAds.

* Esse parâmetro mapeia para a [!DNL Marketo Measure] Campo &#39;Fonte do ponto de contato&#39; no SFDC.
* _[!DNL Marketo Measure]Prática recomendada:_ Esse parâmetro rastreia a fonte do seu tráfego, de modo que não é adequado usá-lo para indicar o tipo de anúncio, por exemplo, redirecionamento, patrocinado etc. Ele é melhor usado para rastrear o subcanal de nível superior. Lembre-se, você está respondendo a pergunta &quot;de onde vem meu tráfego?&quot; Você está procurando o referenciador. Neste exemplo, a fonte da UTM é o local onde seu anúncio está localizado (não a página da Web propriamente dita, pois é automaticamente rastreada fora das tags). Se você estiver rastreando uma campanha de email de entrega, o email de entrega é a fonte.

**utm_campaign**

* A campanha é usada para identificar uma campanha de marketing específica.
* Ele responde à pergunta: &quot;Por que eles estão vindo até você?&quot;
* Use essa tag para denotar o nome da campanha de publicidade como ela existe em [!DNL Google AdWords] ou [!DNL BingAds]ou para indicar o nome pelo qual você identifica a campanha internamente. Você pode até mesmo usar essa tag para especificar outras informações, como localização geográfica ou tipo de rede de anúncios.
* Esse parâmetro mapeia para a [!DNL Marketo Measure] &#39;Campo Nome da campanha de anúncio&#39; no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: Ao determinar nomes de campanha, evite usar marcas de pontuação ou espaços vazios entre as palavras, pois usá-las pode levar a erros de codificação do navegador. Para obter melhores resultados, use sublinhados.

**utm_content**

* Use o parâmetro Conteúdo da UTM quando quiser rastrear mais de uma parte de marketing existente em uma única página da Web. Por exemplo, se você tiver um botão &quot;Solicitar uma demonstração&quot; e um botão &quot;Inscrever-se no nosso boletim informativo semanal&quot; e quiser saber qual está gerando mais tráfego, nomeie cada um e use uma tag de Conteúdo de UTM para rastreá-los. O nome de cada parte do &quot;conteúdo&quot; é o valor da tag.
* Esse parâmetro mapeia para a [!DNL Marketo Measure] Campo &quot;Conteúdo do anúncio&quot; no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: Este é um valor opcional, mas [!DNL Marketo Measure] A recomenda usá-la. Essa tag está associada ao título do anúncio ou da peça de marketing que você deseja rastrear. Se você usar uma publicidade em imagem, certifique-se de escrever as dimensões da imagem em seu título.

**utm_term**

* O termo é semelhante ao parâmetro Conteúdo da UTM. O termo é útil para identificar palavras-chave em anúncios para campanhas pagas. Se você usar o recurso de marcação automática, isso será feito para você. Se você não estiver usando o recurso de marcação automática da plataforma de publicidade, adicione com cuidado todas as palavras-chave que deseja rastrear.
* Esse parâmetro mapeia para a [!DNL Marketo Measure] Campo &quot;Texto de palavra-chave&quot; no SFDC.
* _[!DNL Marketo Measure]Prática recomendada_: A tag Termo da UTM é opcional, mas excelente para rastrear palavras-chave. Verifique a ortografia e evite usar caracteres especiais. Se mais de uma palavra for necessária, tente usar sublinhados ou nenhum espaço.

Cada parâmetro reúne informações relevantes para o valor atribuído. O valor de cada tag permite rastrear e classificar todas as campanhas digitais e responder às perguntas: onde, como e por quê?

Aqui está um gráfico dos parâmetros da UTM [!DNL Marketo Measure] As análises e o campo de ponto de contato correspondente ao qual estão vinculadas:

| **Parâmetro UTM** | **Correspondente [!DNL Marketo Measure] Campo** |
|---|---|
| utm_medium | Médio |
| utm_source | Origem do Touchpoint |
| utm_campaign | Nome da campanha publicitária |
| utm_content | Conteúdo do anúncio |
| utm_term | Texto da palavra-chave |
