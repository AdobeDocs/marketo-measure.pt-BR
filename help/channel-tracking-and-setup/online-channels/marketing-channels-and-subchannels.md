---
unique-page-id: 18874682
description: Canais e subcanais de marketing - [!DNL Marketo Measure] - Documentação do produto
title: Canais e subcanais de marketing
exl-id: fbe2a994-cf6d-439c-af96-a562216434cc
feature: Channels
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '472'
ht-degree: 6%

---

# Canais e subcanais de marketing {#marketing-channels-and-subchannels}

## Finalidade {#purpose}

Para definir em que um canal e subcanal estão [!DNL Marketo Measure], como eles estão relacionados ao seu conteúdo, a diferença entre as duas classificações e como são usadas na [!DNL Marketo Measure] aplicativo.

## Visão geral {#overview}

Os Canais de marketing são usados para ajudar a categorizar (ou &quot;segmentar&quot;) suas atividades de marketing para facilitar a criação de relatórios, tanto no [!DNL Marketo Measure] Traço do ROI e no seu CRM. [!DNL Marketo Measure] O vem com 12 canais prontos para uso (que você pode personalizar/renomear para atender às convenções de sua organização), bem como a capacidade de criar canais personalizados para oferecer uma filtragem ainda mais granular.

Sempre que você receber um visitante de uma de suas páginas de Conteúdo no site (seja uma Página da Web, um Download de white paper, um URL de página etc.), esse Lead será &quot;segmentado&quot; em um Canal/Subcanal com base em vários parâmetros de UTM encontrados no URL:

* Meio
* Origem
* Campanha
* Página
* Website de indicação

Para personalizar em qual &quot;bloco&quot; seus clientes em potencial se encaixarão com base nos parâmetros UTM, você pode usar as Regras de canal. Para obter mais informações sobre como configurar e manter suas Regras de canal, [clique aqui](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md).

Saiba como configurar seu [Canais on-line](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) e [Canais offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md), bem como a diferença entre eles.

**Canal de marketing**

O Canal de marketing é o mais amplo nível de classificação e pode abranger uma grande variedade de Subcanais. Você pode considerá-los o &quot;tipo&quot; de Subcanal de onde seus leads vêm. Os exemplos de Canais de marketing incluem **Pesquisa paga, Pesquisa orgânica, Exibição,** e **Social pago**. O Canal de marketing geralmente corresponde ao valor do parâmetro utm_medium encontrado no URL.

**Subcanal**

Os subcanais são a segunda peça do quebra-cabeça ao selecionar seus clientes em potencial de entrada. Subcanais contam a história de exatamente _que_ A iteração do seu Canal de marketing foi usada. Por exemplo, no Canal de marketing social pago, você pode ter Subcanais para **AdWord**, **BingAds**, **Facebook**, etc. O Subchannel geralmente corresponde ao valor do parâmetro utm_source encontrado no URL.

## Exemplo de caso de uso {#use-case-example}

O diagrama abaixo ilustra um exemplo de Canal de marketing, Subcanal e Conteúdo com base em uma página da Web com o seguinte URL:

* [http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial](http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial)*

Nesse caso, o conteúdo que o usuário está tentando acessar é o Guia de introdução à atribuição de marketing B2B. [!DNL Marketo Measure] O analisará o URL que leva a esse Conteúdo usando as Regras de canal configuradas nesta organização e as usará para &quot;agrupar&quot; esse lead no Canal de marketing &quot;Social pago&quot; e no Subcanal &quot;LinkedIn&quot;.

![](assets/1.jpg)

Mais exemplos...

**Canal de marketing (médio)**

* PPC
* Social pago
* Social orgânico
* Email
* Eventos e Conferências
* Pesquisa orgânica/SEO
* PR
* Programas de referência

**Subcanal (fonte do ponto de contato)**

* Google AdWords
* BingAds
* Anúncios do Facebook
* Adroll
* Clique duas vezes
* Capterra
* Campanhas de Gotejamento
* Anúncios do LinkedIn

**Conteúdo (white papers, URLs de páginas, publicações de blog)**

* www.adobe.com/blog1
* www.adobe.com/whitepaper
* www.adobe.com/sign-up-now
