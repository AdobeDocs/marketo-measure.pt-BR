---
unique-page-id: 18874572
description: Registros duplicados e [!DNL Marketo Measure] - [!DNL Marketo Measure]
title: Registros duplicados e [!DNL Marketo Measure]
exl-id: e340100c-120a-4771-946d-336a1458da4e
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '288'
ht-degree: 6%

---

# Registros duplicados e [!DNL Marketo Measure] {#duplicate-records-and-marketo-measure}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

[!DNL Marketo Measure] O usa o endereço de email como nosso identificador exclusivo ao corresponder dados a um cliente potencial ou contato relacionado no CRM. Quando [!DNL Marketo Measure] Encontrar vários clientes em potencial ou contatos com o mesmo endereço de email, exibiremos os mesmos dados em todos os registros. O impacto disso acontece quando você relata os clientes em potencial ou contatos com [!DNL Marketo Measure] e pode aumentar incorretamente a quantidade de pessoas únicas que têm pontos de contato do comprador.

Como isso se parece no [!DNL Marketo Measure] Reportando?

_Exemplo de relatório: [!DNL Marketo Measure] Pessoas com pontos de contato do comprador._

![](assets/1-1.png)

Você pode ver para [!DNL Marketo Measure] ID de pessoa de kelsey@adobe.com que existe um cliente potencial e contato com esse endereço de email. Você descobrirá que, neste relatório, foram relatados 2 primeiros contatos, 2 contatos de criação de clientes potenciais e 2 interações PostLC. Esses registros duplicados compartilham a mesma data e informações de ponto de contato, o que pode levar à conclusão de que são duas pessoas diferentes, apesar de serem a mesma pessoa.

**Recomendação**

* Para maximizar o retorno em seus relatórios, recomendamos aproveitar uma ferramenta de desduplicação no CRM para garantir que você esteja criando apenas registros exclusivos e novos. Isso pode ser feito com sua ferramenta de Automação de marketing ou com um software separado instalado em seu CRM. [!DNL Marketo Measure] não exclui registros duplicados automaticamente e não oferece esse serviço por meio de nosso software.
* Uma opção alternativa seria mesclar manualmente os registros ao identificar duplicatas. Esse processo pode ser demorado e tedioso, mas a saída de relatórios precisos vale o investimento de tempo.
