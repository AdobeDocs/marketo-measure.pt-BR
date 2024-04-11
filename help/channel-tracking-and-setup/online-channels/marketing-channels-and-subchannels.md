---
unique-page-id: 18874682
description: Canais e subcanais de marketing -  [!DNL Marketo Measure]
title: Canais e subcanais de marketing
exl-id: fbe2a994-cf6d-439c-af96-a562216434cc
feature: Channels
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: ht
source-wordcount: '450'
ht-degree: 100%

---

# Canais e subcanais de marketing {#marketing-channels-and-subchannels}

## Finalidade {#purpose}

Para definir o que são um canal e um subcanal no [!DNL Marketo Measure], como se relacionam com o seu conteúdo, a diferença entre as duas classificações e como são usados no aplicativo do [!DNL Marketo Measure].

## Visão geral {#overview}

Os canais de marketing são usados para ajudar a categorizar (ou “compartimentar”) suas atividades de marketing, facilitando a criação de relatórios tanto no ROI Dash do [!DNL Marketo Measure] quanto no CRM. O [!DNL Marketo Measure] vem com 12 canais prontos para uso (que você pode personalizar/renomear para que atendam às convenções de sua organização) e com a capacidade de criar canais personalizados para uma filtragem ainda mais granular.

Sempre que receber um visitante em uma página de conteúdo no site (seja esse conteúdo uma página da Web, um download de white paper, um URL de página, etc.), esse lead será &quot;compartimentado&quot; em um canal/subcanal com base em vários parâmetros de UTM encontrados no URL:

* Meio
* Origem
* Campanha
* Página de destino
* Site de referência

Para personalizar em qual &quot;compartimento&quot; seus leads se encaixarão com base nos parâmetros UTM, você pode usar as Regras de canal. Para obter mais informações sobre como configurar e manter suas Regras de canal, [clique aqui](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md).

Saiba como configurar seus [Canais online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) e [Canais offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md) bem como a diferença entre eles.

**Canal de marketing**

O Canal de marketing é o nível de classificação mais amplo e pode abranger uma grande variedade de subcanais. Considere-os como o “tipo” de subcanal de onde seus leads vêm. Exemplos de canais de marketing incluem **Pesquisa paga, Pesquisa orgânica, Exibição,** e **Social pago**. O Canal de marketing geralmente corresponde ao valor do parâmetro utm_medium encontrado no URL.

**Subcanal**

Os subcanais são a segunda peça do quebra-cabeça ao compartimentar seus leads recebidos. Os subcanais mostram exatamente _qual_ iteração do seu canal de marketing foi usada. Por exemplo, no canal de marketing Social pago, é possível ter subcanais para o **AdWord**, **BingAds**, **Facebook**, etc. O subcanal geralmente corresponde ao valor do parâmetro utm_source encontrado no URL.

## Exemplo de caso de uso {#use-case-example}

O diagrama abaixo ilustra um exemplo de canal de marketing, subcanal e conteúdo com base em uma página da Web com o seguinte URL:

* [http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial](http://info.bizible.com/intro-guide-b2b-marketing-attribution?utm_source=linkedin&amp;utm_medium=paidsocial)*

Nesse caso, o conteúdo que a pessoa está tentando acessar é o Guia de introdução à atribuição de marketing B2B. O [!DNL Marketo Measure] analisará o URL que leva a esse conteúdo usando as Regras de canal configuradas nesta organização e as usará para “compartimentar” esse lead no canal de marketing “Social pago” e no subcanal “LinkedIn”.

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

**Subcanal (origem do ponto de contato)**

* Google AdWords
* BingAds
* Anúncios do Facebook
* Adroll
* Clique duplo
* Capterra
* Campanhas de gotejamento
* Anúncios do LinkedIn

**Conteúdo (white papers, URLs de páginas, publicações de blog)**

* www.adobe.com/blog1
* www.adobe.com/whitepaper
* www.adobe.com/sign-up-now
