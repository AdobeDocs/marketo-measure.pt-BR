---
unique-page-id: 18874652
description: '[!DNL Marketo Measure] Perguntas frequentes sobre Visualização Através de Atribuição - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Perguntas frequentes sobre atribuição de view through'
exl-id: d20e88f3-3ff8-4381-a4b8-6862798caa74
feature: Attribution
source-git-commit: 48962b999fdd16fe96d18708ec301e64a39bc76e
workflow-type: tm+mt
source-wordcount: '492'
ht-degree: 27%

---

# [!DNL Marketo Measure] Perguntas frequentes sobre atribuição de view through {#marketo-measure-view-through-attribution-faq}

## O que é Visualizar por meio de atribuição? {#what-is-view-through-attribution}

O recurso [!DNL Marketo Measure] [!UICONTROL Visualizar através da atribuição] inclui a capacidade de incluir impressões de anúncios no modelo de atribuição.

>[!IMPORTANT]
>
>Devido a preocupações com a privacidade, cookies de terceiros serão desativados. A desativação de cookies de terceiros no terceiro trimestre de 2024 anunciada pelo Google Chrome marca efetivamente o fim dessa forma de rastreamento. Como resultado, a Adobe descontinuará as funções do Marketo Measure que dependem de cookies de terceiros, mais especificamente, o rastreamento entre domínios e a atribuição de visualização, que usam o cookie de impressão Google/DoubleClick. Nenhuma outra função do Marketo Measure será afetada. O uso de cookies próprios também não será afetado. À luz do cronograma do Google, a data esperada de descontinuação das duas funções acima é de 01/06/2024. Os dados relacionados coletados antes dessa data permanecerão disponíveis aos clientes da Adobe.

## Por que [!UICONTROL Visualizar através de atribuição] é importante? {#why-is-view-through-attribution-important}

Historicamente, o redirecionamento ou a publicidade de impressão têm sido difíceis de serem considerados pelos profissionais de marketing na análise de atribuição. Os possíveis clientes podem, ocasionalmente, ser expostos a anúncios de redirecionamento, mas é improvável que realmente cliquem em um desses anúncios e preencham um formulário na mesma sessão. Nossa solução View Through Attribution agora tem a capacidade de rastrear se alguém foi exposto ou não a um anúncio de impressão. Esse ponto de contato será anexado ao registro individual e continuará até que o cliente potencial se torne um cliente. Com essas informações, o profissional de marketing agora terá uma melhor compreensão do desempenho de seus anúncios de redirecionamento.

## O que está envolvido na configuração? {#what-is-involved-in-setting-this-up}

Para que [!DNL Marketo Measure] comece a medir as impressões do anúncio, há uma marca de impressão que precisa ser colocada no Gerenciador de Campanha Doubleclick. Depois que a tag é implementada, as impressões são armazenadas em nossos logs e cuidamos do resto. Entre em contato com o Gerente de sucesso se estiver interessado em medir a exibição por meio da atribuição.

## Quais plataformas de anúncios são compatíveis? {#which-ad-platforms-are-supported}

Atualmente, oferecemos suporte ao [!DNL Doubleclick] Gerente de campanha.

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

## Como isto será em [!DNL Salesforce?] {#what-will-this-look-like-in-salesforce}

[!DNL Marketo Measure] criará um único ponto de contato de impressão em qualquer cliente potencial que tenha sido exposto ao anúncio de exibição. Somos capazes de mapear o usuário mesmo depois que ele chega pela primeira vez ao seu site (FT) e preenche um formulário (LC). O ponto de contato conterá informações de anúncios, como Nome/ID da campanha de publicidade, ID do anúncio, Conteúdo do anúncio, Nome/ID do site, Nome/ID da disposição, Canal de marketing, Geografia, Página do referenciador e muito mais.

O modelo de atribuição de view-through dependerá do cliente e de seus dados.
