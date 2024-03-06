---
unique-page-id: 18874596
description: Configuração de canal personalizado online - [!DNL Marketo Measure]
title: Configuração de canal personalizado online
exl-id: 170ac564-6cdd-4036-abf0-b9b230bed4f7
feature: Channels
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '1219'
ht-degree: 69%

---

# Configuração de canal personalizado online {#online-custom-channel-setup}

Para ter relatórios precisos, os canais de marketing devem ser configurados para refletir a estratégia de UTM da sua organização. Este guia orienta você sobre a melhor maneira de configurar suas regras de canal personalizadas.

## Antes de começar {#before-you-begin}

Antes de começar a criar as regras de canal para [!DNL Marketo Measure], pense na organização de suas campanhas de marketing e como elas se encaixam na estrutura do [!DNL Marketo Measure]. Determine quais canais, subcanais, campanhas e sites de referência você deseja rastrear.

O que deve ser lembrado:

* Sua organização pode criar no máximo 40 canais de marketing personalizados. Isso inclui canais offline e online.
* Sua organização pode criar até 200 subcanais.
* Cada coleção ou intervalo de dados precisa de sua própria regra (linha na planilha) para especificar como os dados serão organizados. Seja o mais específico possível.
* [!DNL Marketo Measure] A lógica prioriza os dados em ordem decrescente, começando pela linha superior da planilha e descendo. Ele lê cada intervalo, ou célula, linha por linha, procurando pelo primeiro ajuste. Os dados são classificados de acordo com os valores nesses intervalos. Mais informações sobre isso abaixo.
* Não classifique a planilha em ordem alfabética, pois isso interfere nas regras de lógica.
* Depois que o arquivo for carregado, não será possível alterar nenhuma das regras por sete dias. O [!DNL Marketo Measure] utiliza esse tempo para processar e atualizar os touchpoints.

## [!DNL Marketo Measure] Lógica e prioridades {#marketo-measure-logic-and-priorities}

O primeiro passo é baixar a planilha de canal personalizada do aplicativo [!DNL Marketo Measure]. Navegue até **Configurações** na guia **Minha conta** e selecione **Online**. Você pode selecionar **Baixar modelo original** ou **Baixar as regras atuais**.

![](assets/1.png)

A planilha tem sete colunas:

![](assets/2.png)

* **Canal:** adicione seus vários canais de marketing aqui
* **Subcanal:** adicione os subcanais correspondentes aqui
* **Campanha:** adicione nomes de campanha aqui, independentemente de o valor ser proveniente de UTMs ou Campanhas do Salesforce para o [!DNL Marketo Measure] Funcionalidade de atividades
* **Meio:** a coluna meio representa o valor do parâmetro utm_medium
* **Origem:** a coluna de origem representa o valor do parâmetro utm_source
* **Landing page:** adicionar landing page aqui
* **Site de referência:** os URLs de sites que fazem referência ao tráfego para suas páginas ou lógica do [!DNL Marketo Measure] (indicada por colchetes)

A oitava coluna anota quais regras você não pode excluir da planilha com &quot;Não remover&quot;. A parte superior da planilha tem regras de canal padrão que o [!DNL Marketo Measure] recomenda que você não altere ou remova, mesmo que não use esses canais. O [!DNL Marketo Measure] tem integrações profundas com essas plataformas para que sejam incluídas por padrão.

As linhas representam as regras e a ordem em que o [!DNL Marketo Measure] prioriza os dados. A primeira linha tem prioridade sobre a segunda linha, a segunda tem prioridade sobre a terceira linha e assim por diante. Ao determinar em qual canal e subcanal de marketing devem ser incluídos touchpoints, o [!DNL Marketo Measure] lê de cima para baixo, da esquerda para a direita, até encontrar uma linha que atenda aos critérios do touchpoint. (Se um ponto de contato tiver uma `utm_source=Facebook`, o ponto de contato é segmentado no canal Social.Facebook devido à regra 15 na captura de tela).

![](assets/3.png)

O [!DNL Marketo Measure] vem com 12 canais padrão para uso. Esses canais estão relacionados às plataformas com as quais o [!DNL Marketo Measure] está totalmente integrado. Use-as ou não, não as remova. Se você usar uma dessas plataformas, o Bing Ads, por exemplo, mas preferir usar uma convenção de nomenclatura diferente para o canal ou subcanal, será possível atualizar o nome. Um exemplo é mostrado na imagem abaixo.

![](assets/4.png)

A estrutura das regras também é importante. As regras podem parecer informações repetidas e dados ausentes, mas essa estrutura é intencional. Para uma classificação precisa de dados, é necessário mapear cada origem individual para o canal apropriado separadamente, inclusive as origens que compartilham subcanais e canais. Quanto mais detalhadas e granulares forem as regras, mais reveladores serão os resultados. Basicamente, é uma prática recomendada escrever uma regra detalhada para cada esforço de marketing que você deseja rastrear.

Considere a seguinte situação: você tem outros anúncios que não deseja rastrear por algum motivo, ou recebe visitas ao seu site de um canal familiar, mas não de uma origem familiar. Essa situação pode levar à perda de dados se o [!DNL Marketo Measure] não conseguir encontrar a regra apropriada a ser usada para classificar os dados. Para evitar que isso aconteça o, [!DNL Marketo Measure] recomenda quebrar sua regra em várias linhas.

Cada parâmetro ou componente da regra é mapeado separadamente para o canal. Por exemplo, quando o [!DNL Marketo Measure] tem dados [!DNL Facebook] para classificar, ele procura regras relacionadas ao [!DNL Facebook]. Ele faz a varredura de cima para baixo. No exemplo mostrado abaixo, o [!DNL Marketo Measure] entenderia isso para o primeiro subcanal [!DNL Facebook], tudo o que ele precisa ler é o parâmetro de origem para soltar dados no intervalo dessa regra.

![](assets/5.png)

A próxima regra solicita apenas o parâmetro medium, para que todos os dados com esse parâmetro sejam classificados neste canal. Por último, para [!DNL Facebook], todos os dados provenientes do URL do Facebook são colocados no último bucket do Facebook.

O canal padrão “Outro” existe para capturar dados que não atendem a nenhum critério de regra. Observe que alguns dos intervalos no canal Outro contêm asteriscos (&#42;). Esses asteriscos representam curingas que agem como algo abrangente.

![](assets/6.png)

Devido a [!DNL Marketo Measure] lógica de cima para baixo, a regra curinga, indicada com um asterisco (&#42;), deve ser colocada no final da sua folha de regras. Todos os dados que não são capturados ou classificados pelas outras regras são adicionados a esse bucket curinga.

Abaixo estão mais exemplos de lógica curinga:

* &#42;email&#42; = contém “email”
* &#42;email = termina com “email”
* email&#42; = [!UICONTROL inicia com email]

Além disso, observe que, se você criar um subcanal para um de seus canais, deverá criar um subcanal para todas as regras nesse canal. Em outras palavras, se você criar um subcanal, não poderá deixar o restante das colunas em branco.

## Configuração das regras de canais personalizados {#setting-up-your-custom-channels-rules}

Depois de decidir como deseja organizar e priorizar seus dados, você estará pronto para adicionar suas regras à planilha. Abaixo estão algumas práticas recomendadas:

* Mantenha suas regras o mais simples possível desde o início. Você pode criar as regras conforme avança.
* Não adicione caracteres especiais nos nomes dos canais (por exemplo, $%#&amp;&#42;@)
* Não edite as regras associadas ao BingAds e AdWords. Essas regras são cruciais para a segmentação de dados que vêm automaticamente da integração da API [!DNL Marketo Measure] com essas plataformas. No entanto, alterar o subcanal e o nome do canal para atender às suas necessidades não é um problema.
* Não remova as regras que contêm uma nota “;Não remover”.
* As regras de pesquisa orgânicas são sempre colocadas após as [!UICONTROL Regras de pesquisa paga]
* Não é possível criar regras com base em subdomínios diferentes.
* Se você tiver mais de um valor para adicionar em uma célula na planilha, separe os valores com um ponto e vírgula `;` somente. Sem vírgulas ou espaços.
* Não é necessário adicionar ponto-com (.com) ao final do URL de referência.
* Ao adicionar um URL de referência, não o coloque entre parênteses como as outras regras relacionadas à API.

## Fazer upload de suas regras de canais personalizados {#uploading-your-custom-channels-rules}

Verifique se os novos valores de canal e subcanal que você está adicionando no CSV já foram adicionados na área de configurações de canal da sua conta do Bizible. Verifique novamente se todos os nomes de canal e subcanais correspondem no CSV com a área de configurações de canal da sua conta do [!DNL Marketo Measure]. Verifique se há vírgulas e espaços..

Se você receber uma mensagem de erro durante o upload, corrija o problema e faça upload novamente. Se nenhuma mensagem de erro for recebida, clique em **Salvar e processar** na parte inferior da página.
