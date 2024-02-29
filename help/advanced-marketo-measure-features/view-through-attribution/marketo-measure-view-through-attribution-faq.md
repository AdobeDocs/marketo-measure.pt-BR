---
unique-page-id: 18874652
description: "[!DNL Marketo Measure] Exibir por meio das perguntas frequentes sobre atribuição - [!DNL Marketo Measure] - Documentação do produto"
title: '"[!DNL Marketo Measure] "Exibir por meio das perguntas frequentes sobre atribuição"'
exl-id: d20e88f3-3ff8-4381-a4b8-6862798caa74
feature: Attribution
source-git-commit: cc786cb3af08fa36af91ef22f4dba3072c9617eb
workflow-type: tm+mt
source-wordcount: '395'
ht-degree: 6%

---

# [!DNL Marketo Measure] Perguntas frequentes sobre atribuição de view through {#marketo-measure-view-through-attribution-faq}

## O que é Visualizar por meio de atribuição? {#what-is-view-through-attribution}

A variável [!DNL Marketo Measure] [!UICONTROL Visualizar por meio da atribuição] O recurso inclui a capacidade de incluir impressões de anúncios no modelo de atribuição.

## Por que [!UICONTROL Visualizar por meio da atribuição] Importante? {#why-is-view-through-attribution-important}

Historicamente, o redirecionamento ou a publicidade de impressão têm sido difíceis de serem considerados pelos profissionais de marketing na análise de atribuição. Os possíveis clientes podem, ocasionalmente, ser expostos a anúncios de redirecionamento, mas é improvável que realmente cliquem em um desses anúncios e preencham um formulário na mesma sessão. Nossa solução View Through Attribution agora tem a capacidade de rastrear se alguém foi exposto ou não a um anúncio de impressão. Esse ponto de contato será anexado ao registro individual e continuará até que o cliente potencial se torne um cliente. Com essas informações, o profissional de marketing agora terá uma melhor compreensão do desempenho de seus anúncios de redirecionamento.

## O que está envolvido na configuração? {#what-is-involved-in-setting-this-up}

A fim de [!DNL Marketo Measure] para começar a medir as impressões do anúncio, há uma tag de impressão que precisa ser colocada no Doubleclick Campaign Manager. Depois que a tag é implementada, as impressões são armazenadas em nossos logs e cuidamos do resto. Entre em contato com o Gerente de sucesso se estiver interessado em medir a visualização por meio de atribuição.

## Quais plataformas de anúncios são compatíveis? {#which-ad-platforms-are-supported}

Atualmente oferecemos suporte [!DNL Doubleclick] Gerente de campanha.

## Como a atribuição é calculada? {#how-is-the-attribution-calculated}

Fizemos uma análise cuidadosa dos dados de impressão e de sua influência nas conversões em todos os estágios e canais de marketing. A distribuição varia dependendo do modelo, como pode ser visto na tabela abaixo:

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
   <th>Primeiro contato</th> 
   <th>Criação de lead</th> 
   <th>Em forma de U</th> 
   <th>Em forma de W</th> 
   <th>Caminho completo</th> 
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
   <td>26,6%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>LC</strong></td> 
   <td>0%</td> 
   <td>100%</td> 
   <td>35%</td> 
   <td>26,6%</td> 
   <td>20%</td> 
   <td>Personalizado</td> 
  </tr> 
  <tr> 
   <td><strong>CO</strong></td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>0%</td> 
   <td>26,6%</td> 
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

## Como será isso em [!DNL Salesforce?] {#what-will-this-look-like-in-salesforce}

[!DNL Marketo Measure] criará um ponto de contato de impressão único em qualquer lead que foi exposto ao anúncio de exibição. Somos capazes de mapear o usuário mesmo depois que ele chega pela primeira vez ao seu site (FT) e preenche um formulário (LC). O ponto de contato conterá informações de anúncios, como Nome/ID da campanha de publicidade, ID do anúncio, Conteúdo do anúncio, Nome/ID do site, Nome/ID da disposição, Canal de marketing, Geografia, Página do referenciador e muito mais.

O modelo de atribuição de view-through dependerá do cliente e de seus dados.
