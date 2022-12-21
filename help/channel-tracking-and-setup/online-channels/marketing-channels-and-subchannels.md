---
unique-page-id: 18874682
description: Canais e subcanais de marketing - [!DNL Marketo Measure] - Documentação do produto
title: Canais e subcanais de marketing
exl-id: fbe2a994-cf6d-439c-af96-a562216434cc
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '472'
ht-degree: 3%

---

# Canais e subcanais de marketing {#marketing-channels-and-subchannels}

## Finalidade {#purpose}

Para definir o que é um Canal e um Subcanal [!DNL Marketo Measure], como elas estão relacionadas ao seu conteúdo, a diferença entre as duas classificações e como são utilizadas na variável [!DNL Marketo Measure] aplicativo.

## Visão geral {#overview}

Os Canais de marketing são usados para ajudar a categorizar (ou &quot;agrupar&quot;) suas atividades de marketing para facilitar a criação de relatórios, tanto no [!DNL Marketo Measure] Dash do ROI, bem como em seu CRM. [!DNL Marketo Measure] O vem com 12 canais prontos para uso (que podem ser personalizados/renomeados para atender às convenções de sua organização), bem como a capacidade de criar Canais personalizados para filtragem ainda mais granular.

Sempre que você receber um visitante de uma de suas páginas de Conteúdo do site (seja essa página da Web, um download de white-paper, um URL de página etc.), o lead será &quot;agrupado&quot; em um canal/subcanal com base em vários parâmetros de UTM encontrados no URL:

* Médio
* Fonte
* Campanha
* Página
* Website de indicação

Para personalizar o &quot;bucket&quot; em que os leads serão baseados nos parâmetros de UTM, você pode usar as Regras de canal. Para obter mais informações sobre como configurar e manter suas regras de canal, [clique aqui](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md).

Saiba como configurar seu [Canais online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) e [Canais offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md), bem como a diferença entre eles.

**Canal de marketing**

O Canal de marketing é o mais amplo nível de classificação e pode abranger uma grande variedade de Subcanais. Você pode considerar esses o &quot;tipo&quot; de Subcanal do qual seus leads vêm. Exemplos de Canais de marketing incluem **Pesquisa paga, Pesquisa orgânica, Exibição,** e **Social pago**. O Canal de marketing geralmente corresponde ao valor do parâmetro utm_medium encontrado no URL.

**Subcanal**

Subcanais são a segunda parte do quebra-cabeça ao agrupar seus leads de entrada. Subcanais contam exatamente a história _which_ foi usada a iteração do seu Canal de marketing. Por exemplo, no Canal de marketing social pago, você pode ter Subcanais para **AdWords**, **BingAds**, **Facebook**, etc. O Subcanal geralmente corresponde ao valor do parâmetro utm_source encontrado no URL.

## Exemplo de caso de uso {#use-case-example}

O diagrama abaixo ilustra um exemplo de Canal de marketing, Subcanal e Conteúdo com base em uma página da Web com o seguinte URL:

* [http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial](http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial)*

Nesse caso, o Conteúdo que o usuário está tentando acessar é o Guia de Introdução à Atribuição de Marketing B2B. [!DNL Marketo Measure] O analisará o URL que leva a esse Conteúdo usando as Regras de canal configuradas nesta organização e as usará para &quot;agrupar&quot; esse lead no Canal de marketing &quot;Social pago&quot; e no Subcanal &quot;LinkedIn&quot;.

![](assets/1.jpg)

Mais exemplos...

**Canal de marketing (médio)**

* PPC
* Social pago
* Social orgânico
* E-mail
* Eventos e conferências
* Pesquisa orgânica/SEO
* PR
* Programas de Referência

**Subcanal (Fonte do ponto de contato)**

* Google AdWords
* BingAds
* Anúncios do Facebook
* Adroll
* Clique duas vezes
* Capterra
* Campanhas de Drill
* Anúncios do linkedIn

**Conteúdo (white-papers, URLs de página, postagens no blog)**

* www.adobe.com/blog1
* www.adobe.com/whitepaper
* www.adobe.com/sign-up-now
