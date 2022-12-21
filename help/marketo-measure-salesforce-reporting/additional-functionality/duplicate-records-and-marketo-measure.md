---
unique-page-id: 18874572
description: Registros duplicados e [!DNL Marketo Measure] - [!DNL Marketo Measure] - Documentação do produto
title: Registros duplicados e [!DNL Marketo Measure]
exl-id: e340100c-120a-4771-946d-336a1458da4e
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '286'
ht-degree: 0%

---

# Registros duplicados e [!DNL Marketo Measure] {#duplicate-records-and-marketo-measure}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

[!DNL Marketo Measure] usam o endereço de email como nosso identificador exclusivo ao corresponder dados a um Lead ou contato relacionado no CRM. When [!DNL Marketo Measure] encontrar vários Leads ou Contatos com o mesmo endereço de email, nós exibiremos os mesmos dados em todos os registros. O impacto disso ocorre quando você está relatando os leads ou contatos com a [!DNL Marketo Measure] e podem aumentar incorretamente a quantidade de pessoas únicas que têm pontos de contato de comprador.

Como isso se parece em [!DNL Marketo Measure] Relatando?

_Exemplo de relatório: [!DNL Marketo Measure] Pessoas com pontos de contato de comprador._

![](assets/1-1.png)

Você pode ver para a variável [!DNL Marketo Measure] ID de pessoa de kelsey@adobe.com que há um lead e um contato que existe com esse endereço de email. Você descobrirá que neste relatório, há 2 Relatos de primeiro contato, 2 Toques de criação de lead e 2 Interações de PostLC relatadas. Esses registros duplicados compartilham a mesma data de ponto de contato e informações de ponto de contato, o que poderia levar à conclusão de que são duas pessoas diferentes apesar de serem a mesma pessoa.

**Recomendação**

* Para maximizar o retorno em seus relatórios, recomendamos o aproveitamento de uma ferramenta de eliminação de erros em seu CRM para garantir que você esteja criando apenas registros novos e exclusivos. Isso pode ser feito com a ferramenta de Automação de marketing ou um software separado instalado no seu CRM. [!DNL Marketo Measure] O não faz dedupe de registros automaticamente e não oferece esse serviço por meio de nosso software.
* Uma opção alternativa seria unir registros manualmente à medida que você identifica duplicatas. Esse processo pode ser demorado e tedioso, mas a produção de relatórios precisos vale o investimento em tempo.
