---
unique-page-id: 18874646
description: Diferença entre pontos de contato do comprador e pontos de contato da atribuição do comprador - [!DNL Marketo Measure] - Documentação do produto
title: Diferença entre pontos de contato do comprador e pontos de contato da atribuição do comprador
exl-id: 19109271-7b59-44c0-b1ff-e3b0bba9f5ce
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '392'
ht-degree: 0%

---

# Diferença entre pontos de contato do comprador e pontos de contato da atribuição do comprador {#difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints}

Saiba o que define um Ponto de Contato do Comprador (BT) e um Ponto de Contato de Atribuição do Comprador (BAT), as diferenças entre os dois e respondem às perguntas mais frequentes.

A principal distinção entre pontos de contato de comprador e pontos de contato de atribuição de comprador é a relação entre eles [!DNL Salesforce] Objetos. As BTs estão relacionadas aos objetos de lead, contato e caso, mas não ao objeto de Oportunidade. Isso significa que nunca haverá receita associada aos pontos de contato do comprador.

Embora o Objeto de Ponto de Contato da Atribuição de Comprador esteja relacionado ao Contato, Conta e Objetos de Oportunidade, mas não ao Objeto de Cliente Potencial. Isso significa que nunca haverá pontos de contato de atribuição de comprador vinculados aos leads. O objeto BAT é o local onde você verá a receita vinculada às interações de marketing específicas.

Diferença entre BT e BAT:

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <td>Ponto de contato do comprador (BT)</td> 
   <td>Ponto de contato da atribuição do comprador (BAT)</td> 
  </tr> 
  <tr> 
   <td> 
    <ul> 
     <li>Relaciona-se com objetos de lead, contato e caso</li> 
     <li>Não está relacionado ao Objeto de Oportunidade</li> 
     <li>A receita não está associada a um ponto de contato do comprador</li> 
    </ul></td> 
   <td> 
    <ul> 
     <li>Relaciona-se aos objetos Contato, Conta e Oportunidade</li> 
     <li>Não está relacionado ao Objeto de Cliente Potencial</li> 
     <li>Como um ponto de contato de atribuição de comprador está associado a uma Oportunidade, todas as MTD têm receitas associadas a elas</li> 
    </ul></td> 
  </tr> 
 </tbody> 
</table>

## Perguntas frequentes {#faq}

**Quando um ponto de contato do comprador se torna um ponto de contato da atribuição do comprador?**

Uma BT torna-se uma MTD assim que esta BT esteja associada a um contato que tenha uma oportunidade associada. Uma coisa muito importante a compreender é que uma interação de comercialização específica pode ser uma BT e uma BAT.

**Um ponto de contato do comprador pode ter uma Posição de ponto de contato da criação de oportunidades (OC)?**

Um ponto de contato do comprador terá somente uma Posição do ponto de contato de primeiro contato (FT), Criação de lead (LC) ou Envio de formulário (pontos de contato intermediários). Como as BTs não estão relacionadas a Oportunidades, não é possível que uma BT tenha uma Posição de Ponto de Contato para Criação de Oportunidades ou Fechada.

**Como os dados do ponto de contato do comprador são aproveitados?**

Normalmente, os clientes usam os dados do ponto de contato do comprador para entender a Parte superior do funil e o meio do envolvimento do funil. Significado [!DNL Marketo Measure] os usuários sabem quem está enviando formulários, quem está visualizando o site, qual publicação de blog está funcionando bem, qual anúncio do AdWords está conduzindo leva à conversão etc. Os dados do ponto de contato do comprador são excelentes para entender o envolvimento de seus Leads e Contatos.

**Como é um ponto de contato de comprador no Salesforce?**

Aqui está uma imagem de um BT em [!DNL Salesforce]:

![](assets/1.png)

**Como é o ponto de contato de atribuição do comprador no Salesforce?**

Aqui está uma imagem de um BAT em [!DNL Salesforce]:

![](assets/2.png)
