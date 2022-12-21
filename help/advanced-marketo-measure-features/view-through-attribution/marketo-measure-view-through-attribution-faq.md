---
unique-page-id: 18874652
description: "[!DNL Marketo Measure] Perguntas frequentes sobre atribuição de visualização - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Perguntas frequentes sobre atribuição de visualização por meio de"
exl-id: d20e88f3-3ff8-4381-a4b8-6862798caa74
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '397'
ht-degree: 13%

---

# [!DNL Marketo Measure] Perguntas frequentes sobre Atribuição de visualização por meio {#marketo-measure-view-through-attribution-faq}

## O que é Atribuição de view through? {#what-is-view-through-attribution}

O [!DNL Marketo Measure] O recurso Atribuição de view through inclui a capacidade de incluir impressões de anúncios no modelo de atribuição.

## Por que a visualização por meio da atribuição é importante? {#why-is-view-through-attribution-important}

Historicamente, o re-direcionamento ou a publicidade de impressão tem sido difícil para os profissionais de marketing contabilizar na análise de atribuição. Os clientes em potencial podem, ocasionalmente, ser expostos ao redirecionamento de anúncios, mas é improvável que eles realmente cliquem em um desses anúncios e preencham um formulário na mesma sessão. Nossa solução de Atribuição de View Through agora tem a capacidade de rastrear se alguém foi ou não exposto a um anúncio de impressão. Esse ponto de contato será anexado ao registro individual e continuará até que o prospecto se torne um cliente. Com essas informações, o profissional de marketing obterá agora melhores insights sobre o desempenho de seus anúncios de re-direcionamento.

## O que está envolvido na configuração? {#what-is-involved-in-setting-this-up}

Para [!DNL Marketo Measure] para começar a medir as impressões do anúncio, há uma tag de impressão que precisa ser colocada no Doubleclick Campaign Manager. Quando a tag for implementada, as impressões serão armazenadas em nossos logs e cuidaremos do restante. Entre em contato com seu Gerente de sucesso se estiver interessado em medir a exibição por meio de atribuição.

## Quais plataformas de anúncios são compatíveis? {#which-ad-platforms-are-supported}

Atualmente, oferecemos suporte ao Doubleclick Campaign Manager.

## Como a atribuição é calculada? {#how-is-the-attribution-calculated}

Fizemos uma análise cuidadosa dos dados de impressões e de sua influência nas conversões em todos os estágios e canais de marketing. A distribuição varia de acordo com o modelo, como pode ser visto na tabela abaixo:

<table> 
 <colgroup> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><br></th> 
   <th>Primeiro toque</th> 
   <th>Criação do leads</th> 
   <th>Em forma de U</th> 
   <th>Em forma de W</th> 
   <th>Em caminho completo</th> 
   <th>Modelo personalizado</th> 
  </tr> 
  <tr> 
   <td><strong>Impressões</strong></td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>10%</td> 
   <td>10%</td> 
   <td>10%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>FT</strong></td> 
   <td>100%</td> 
   <td>0%</td> 
   <td>35%</td> 
   <td>26.6%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>LC</strong></td> 
   <td>0%</td> 
   <td>100%</td> 
   <td>35%</td> 
   <td>26.6%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>CO</strong></td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>26.6%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>Fechado</strong></td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>Meio</strong></td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>20%</td> 
   <td>10%</td> 
   <td>10%</td> 
   <td>Personalizado</td> 
  </tr> 
 </tbody> 
</table>

## Como será isso em Salesforce? {#what-will-this-look-like-in-salesforce}

[!DNL Marketo Measure] O criará um único ponto de contato de impressão em qualquer lead exposto ao anúncio de exibição. Podemos mapear o usuário mesmo depois que ele chega ao seu site (FT) pela primeira vez e preencher um formulário (LC). O ponto de contato conterá informações de publicidade, como Nome/ID da campanha, ID do anúncio, Conteúdo do anúncio, Nome/ID do site, Nome/ID do posicionamento, Canal de marketing, Geo, Página do referenciador e muito mais.

O modelo de atribuição view-through dependerá do cliente e de seus dados.
