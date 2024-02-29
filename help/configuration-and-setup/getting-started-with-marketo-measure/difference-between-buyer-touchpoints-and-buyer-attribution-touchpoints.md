---
unique-page-id: 18874646
description: Diferença entre Pontos de Contato do Comprador e Pontos de Contato de Atribuição do Comprador - [!DNL Marketo Measure]
title: Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints
exl-id: 19109271-7b59-44c0-b1ff-e3b0bba9f5ce
feature: Touchpoints
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '392'
ht-degree: 61%

---

# Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints {#difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints}

Saiba o que define um Buyer Touchpoint (BT) e um Buyer Attribution Touchpoint (BAT), as diferenças entre os dois e respondem às perguntas mais frequentes.

A principal distinção entre Buyer Touchpoints e Buyer Attribution Touchpoints é a relação deles com objetos [!DNL Salesforce]. Os BTs estão relacionadas aos objetos Lead, Contato e Caso, mas não ao objeto Oportunidade. Isso significa que nunca há receita associada aos Pontos de contato do comprador.

Embora o Objeto de ponto de contato de atribuição do comprador esteja relacionado aos objetos Contato, Conta e Oportunidade, mas não ao Objeto principal, os Pontos de contato de atribuição do comprador não estão vinculados aos clientes potenciais. O objeto BAT é o local em que você verá a receita vinculada a interações de marketing específicas.

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

Um BT torna-se um BAT assim que este BT se associar a um contato que tenha uma oportunidade associada. Uma coisa importante a entender é que uma interação de marketing específica pode ser um BT e um BAT.

**Um Buyer Touchpoint pode ter uma Posição de touchpoint da criação de oportunidades (OC)?**

Um Buyer Touchpoint terá somente uma Posição de touchpoint de primeiro contato (FT), Criação de lead (LC) ou Envio de formulário (touchpoints intermediários). Como os BTs não estão relacionados a Oportunidades, não é possível que um BT tenha uma Posição de ponto de contato de criação de oportunidade ou fechada.

**Como os dados do ponto de contato do comprador são usados?**

Normalmente, os clientes usam os dados do ponto de contato do comprador para entender a Parte superior do funil e o meio do envolvimento do funil. Significado [!DNL Marketo Measure] os usuários sabem quem está enviando formulários, quem está visualizando seu site, qual publicação de blog está tendo um bom desempenho, qual anúncio do AdWords está direcionando leva a conversões e assim por diante. Os dados do Buyer Touchpoint são excelentes para entender o envolvimento de leads e contatos.

**Como é um Buyer Touchpoint no Salesforce?**

Aqui está uma imagem de um BT no [!DNL Salesforce]:

![](assets/1.png)

**Como é um Buyer Attribution Touchpoint no Salesforce?**

Aqui está uma imagem de um BAT no [!DNL Salesforce]:

![](assets/2.png)
