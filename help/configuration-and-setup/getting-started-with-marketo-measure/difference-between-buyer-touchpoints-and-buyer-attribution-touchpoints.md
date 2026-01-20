---
unique-page-id: 18874646
description: Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints - [!DNL Marketo Measure]
title: Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints
exl-id: 19109271-7b59-44c0-b1ff-e3b0bba9f5ce
feature: Touchpoints
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '392'
ht-degree: 100%

---

# Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints {#difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints}

Saiba o que define um Buyer Touchpoint (BT) e um Buyer Attribution Touchpoint (BAT), as diferenças entre os dois e respondem às perguntas mais frequentes.

A principal distinção entre Buyer Touchpoints e Buyer Attribution Touchpoints é a relação deles com objetos [!DNL Salesforce]. Os BTs estão relacionadas aos objetos Lead, Contato e Caso, mas não ao objeto Oportunidade. Isso significa que nunca haverá receita associada aos Buyer Touchpoints.

Embora o objeto do Buyer Attribution Touchpoint esteja relacionado aos objetos Contato, Conta e Oportunidade, mas não ao objeto Lead, os Buyer Attribution Touchpoints não estão vinculados aos leads. O objeto BAT é o local onde você verá a receita vinculada às interações de marketing específicas.

Diferença entre BT e BAT:

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <td>Buyer Touchpoint (BT)</td> 
   <td>Buyer Attribution Touchpoint (BAT)</td> 
  </tr> 
  <tr> 
   <td> 
    <ul> 
     <li>Relaciona-se com objetos Lead, Contato e Caso</li> 
     <li>Não está relacionado ao objeto Oportunidade</li> 
     <li>A receita não está associada a um Buyer Touchpoint</li> 
    </ul></td> 
   <td> 
    <ul> 
     <li>Relaciona-se aos objetos Contato, Conta e Oportunidade</li> 
     <li>Não está relacionado ao objeto Lead</li> 
     <li>Como um Buyer Attribution Touchpoint está associado a uma Oportunidade, todos os BATs têm receitas associadas a elas</li> 
    </ul></td> 
  </tr> 
 </tbody> 
</table>

## Perguntas frequentes {#faq}

**Quando um Buyer Touchpoint se torna um Buyer Attribution Touchpoint?**

Um BT torna-se um BAT assim que este BT se associar a um contato que tenha uma oportunidade associada. Algo importante de compreender é que uma interação de marketing específica pode ser um BT e um BAT.

**Um Buyer Touchpoint pode ter uma Posição de touchpoint da criação de oportunidades (OC)?**

Um Buyer Touchpoint terá somente uma Posição de touchpoint de primeiro contato (FT), Criação de lead (LC) ou Envio de formulário (touchpoints intermediários). Como os BTs não estão relacionados a oportunidades, não é possível que um BT tenha uma Posição de touchpoint para criação de oportunidade ou encerramento.

**Como os dados do Buyer Touchpoint são aproveitados?**

Normalmente, os clientes usam os dados do Buyer Touchpoint para entender o engajamento na parte superior do funil e no meio do funil. Isso significa que usuários do [!DNL Marketo Measure] sabem quem está enviando formulários, quem está visualizando o site, qual publicação de blog está funcionando bem, qual anúncio do AdWords está convertendo leads etc. Os dados do Buyer Touchpoint são excelentes para entender o engajamento de leads e contatos.

**Como é um Buyer Touchpoint no Salesforce?**

Aqui está uma imagem de um BT no [!DNL Salesforce]:

![](assets/buyer-touchpoints-and-buyer-attribution-touchpoints-1.png){width="600" zoomable="yes"}

**Como é um Buyer Attribution Touchpoint no Salesforce?**

Aqui está uma imagem de um BAT no [!DNL Salesforce]:

![](assets/buyer-touchpoints-and-buyer-attribution-touchpoints-2.png){width="600" zoomable="yes"}
