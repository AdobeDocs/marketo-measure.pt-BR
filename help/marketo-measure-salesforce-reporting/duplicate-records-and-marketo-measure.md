---
description: Registros duplicados e orientação do [!DNL Marketo Measure] para usuários do Marketo Measure
title: Registros Duplicados e [!DNL Marketo Measure]
exl-id: e340100c-120a-4771-946d-336a1458da4e
feature: Tracking
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '294'
ht-degree: 10%
---
# Registros Duplicados e [!DNL Marketo Measure] {#duplicate-records-and-marketo-measure}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” em seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

[!DNL Marketo Measure] usa o endereço de email como um identificador exclusivo ao corresponder dados a um cliente potencial ou contato relacionado no CRM. Quando o [!DNL Marketo Measure] encontra vários Clientes Potenciais ou Contatos com o mesmo endereço de email, exibimos os mesmos dados em todos os registros. O impacto disso ocorre quando você está relatando os Clientes Potenciais ou Contatos com [!DNL Marketo Measure] e pode aumentar incorretamente o número de pessoas únicas que têm Pontos de Contato do Comprador.

Como isso se parece nos Relatórios de [!DNL Marketo Measure]?

_Exemplo de relatório: [!DNL Marketo Measure] Pessoas com Pontos de Contato do Comprador._

![Exemplo de relatório: Pessoas da Marketo Measure com Pontos de Contato do Comprador.](assets/additional-functionality-1.png)

Você pode ver para a ID de pessoa [!DNL Marketo Measure] de kelsey@adobe.com que há um cliente potencial e um contato que existem com esse endereço de email. Nesse relatório, são relatados 2 primeiros toques, dois toques de criação de leads e duas interações PostLC. Esses registros duplicados compartilham informações de data e ponto de contato, o que pode levar à conclusão de que são duas pessoas diferentes, apesar de serem a mesma pessoa.

**Recomendação**

* Para maximizar o retorno em seus relatórios, recomendamos usar uma ferramenta de desduplicação no CRM para garantir que você esteja criando apenas registros exclusivos e novos. Isso pode ser feito com sua ferramenta de Automação de marketing ou com um software separado instalado em seu CRM. O [!DNL Marketo Measure] não exclui registros duplicados automaticamente e não oferece esse serviço por meio de nosso software.
* Uma opção alternativa seria mesclar manualmente os registros ao identificar duplicatas. Esse processo pode ser demorado e tedioso, mas o resultado de relatórios precisos vale a pena investir no tempo.
