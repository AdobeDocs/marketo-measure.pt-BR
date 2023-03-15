---
unique-page-id: 18874646
description: Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints - [!DNL Marketo Measure] - Documentação do produto
title: Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints
exl-id: 19109271-7b59-44c0-b1ff-e3b0bba9f5ce
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: ht
source-wordcount: '392'
ht-degree: 100%

---

# Diferença entre Buyer Touchpoints e Buyer Attribution Touchpoints {#difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints}

Saiba o que define um Buyer Touchpoint (BT) e um Buyer Attribution Touchpoint (BAT), as diferenças entre os dois e respondem às perguntas mais frequentes.

A principal distinção entre Buyer Touchpoints e Buyer Attribution Touchpoints é a relação deles com objetos [!DNL Salesforce]. Os BTs estão relacionadas aos objetos Lead, Contato e Caso, mas não ao objeto Oportunidade. Isso significa que nunca haverá receita associada aos Buyer Touchpoints.

Por outro lado, o Buyer Attribution Touchpoint está relacionado aos objetos Contato, Conta e Oportunidade, mas não ao objeto Lead. Isso significa que nunca haverá Buyer Attribution Touchpoints vinculados a Leads. O objeto BAT é o local onde você verá a receita vinculada às interações de marketing específicas.

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

Um BT torna-se um BAT assim que este BT se associar a um contato que tenha uma oportunidade associada. Uma coisa muito importante é que uma interação de marketing específica pode ser um BT e um BAT.

**Um Buyer Touchpoint pode ter uma Posição de touchpoint da criação de oportunidades (OC)?**

Um Buyer Touchpoint terá somente uma Posição de touchpoint de primeiro contato (FT), Criação de lead (LC) ou Envio de formulário (touchpoints intermediários). Como os BTs não estão relacionadas a Oportunidades, não é possível que um BT tenha uma Posição de touchpoint para Criação ou encerramento de oportunidades.

**Como os dados do Buyer Touchpoint são aproveitados?**

Normalmente, os clientes usam os dados do Buyer Touchpoint para entender o engajamento na Parte superior do funil e no meio do funil. Ou seja, os usuários do [!DNL Marketo Measure] sabem quem está enviando formulários, quem está visualizando o site, qual publicação de blog está funcionando bem, qual anúncio do AdWords está convertendo leads etc. Os dados do Buyer Touchpoint são excelentes para entender o envolvimento de leads e contatos.

**Como é um Buyer Touchpoint no Salesforce?**

Aqui está uma imagem de um BT no [!DNL Salesforce]:

![](assets/1.png)

**Como é um Buyer Attribution Touchpoint no Salesforce?**

Aqui está uma imagem de um BAT no [!DNL Salesforce]:

![](assets/2.png)
