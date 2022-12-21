---
unique-page-id: 18874634
description: Registros duplicados em Meu relatório - [!DNL Marketo Measure] - Documentação do produto
title: Duplicar registros em meu relatório
exl-id: 4ee42371-5b67-4c69-9b49-3249f33614d0
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '279'
ht-degree: 0%

---

# Duplicar registros em meu relatório {#duplicate-records-in-my-report}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na nossa documentação, mas ainda veja &quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

Enquanto você mergulha no [!DNL Marketo Measure] Relatórios em [!DNL Salesforce], você pode começar a encontrar registros &quot;duplicados&quot; em seus relatórios. Você provavelmente vai experimentar essa sensação ao revisar [!DNL Marketo Measure] relatórios prontos para uso.

Ao criar relatórios com o objeto de pontos de contato do comprador ou com o objeto de ponto de contato de atribuição do comprador, é importante entender que você não está mais relatando a contagem de leads, contatos ou oportunidades, mas sim que você estará relatando o número de pontos de contato do comprador ou de pontos de contato de atribuição do comprador associados a esses objetos padrão (leads, contatos, oportunidades).

Vejamos o seguinte relatório como exemplo:

Isso é uma **Contatos com pontos de contato do comprador** relatório. Novamente, isso significa que estamos olhando para a contagem de pontos de contato associados a um contato individual.

![](assets/1.gif)

Como podem ver, parece que há três contatos de James Williams no relatório, e por isso podem pensar, &quot;duplicatas!&quot;

No entanto, este relatório mostra o número de pontos de contato relacionados a James. No relatório, você pode ver que James tem um FT (Primeiro contato) individual, um LC individual, Formulário (Toque de criação de lead) e um ponto de contato PostLC (um envio de formulário que ocorre após o ponto de contato LC).

Se quiser entender a &quot;contagem de contatos&quot;, poderá usar os campos &quot;Contagem - Primeiro contato&quot;, &quot;Contar com contato de criação de cliente potencial&quot; ou &quot;Contar-U-Shaped&quot; para entender quantos contatos tiveram interações de marketing.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Universidade: Relatórios SFDC de Estoque](https://universityonline.marketo.com/courses/bizible-fundamentals-bizible-102/#/page/5c5cb68dfb384d0c9fb96cc4)
