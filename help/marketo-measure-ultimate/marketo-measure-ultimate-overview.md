---
description: '[!DNL Marketo Measure] Visão geral final - [!DNL Marketo Measure] - Documentação do produto'
title: '[!DNL Marketo Measure] Visão geral do Ultimate'
exl-id: fada9479-0671-4698-8043-c67d7977577b
feature: Integration, Tracking, Attribution
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '707'
ht-degree: 1%

---

# [!DNL Marketo Measure] Visão geral do Ultimate {#marketo-measure-ultimate-overview}

[!DNL Marketo Measure] (anteriormente Bizible) fornece aos profissionais de marketing informações sobre quais esforços de marketing são os mais eficientes na geração de receita e na maximização do retorno sobre o investimento para sua empresa. [!DNL Marketo Measure] O é uma solução de atribuição de marketing que rastreia e cria relatórios automaticamente sobre o desempenho do canal, fornecendo visibilidade de quais canais impulsionam mais o engajamento do cliente e permitindo otimizar adequadamente seus gastos com marketing.

[!DNL Marketo Measure Ultimate] contém os recursos adicionais:

* Assimilação de praticamente qualquer fonte de dados, bem como de várias fontes de dados do mesmo tipo para trazer todos os seus dados para atribuição.
   * Use com quase qualquer CRM, não apenas o Salesforce e o Dynamics.
   * Conectar várias instâncias do CRM e/ou do MAP a uma [!DNL Marketo Measure] instância.
   * Traga dados de registro e participação de webinários de terceiros.

* Transforme seus dados com grande flexibilidade por meio dos recursos de mapeamento de campo e transformação para garantir a forma correta dos dados.

* Disponibilize os insights de atribuição para aplicativos externos por meio do data warehouse incluído para integrar os insights ao seu fluxo de trabalho. Dados de resultados mais granulares e relatórios baseados em BI, incluindo o Snowflake Data Warehouse, que fornece acesso a dados de resultados granulares e a capacidade de usar qualquer ferramenta de BI para análise e relatórios.

* Integração com a RTCDP (B2B ou B2P Edition), fornecendo uma solução de atribuição B2B integrada para clientes da RTCDP como RTCDP e [!DNL Marketo Measure] ambos funcionam a partir de dados centralizados do Adobe Experience Platform (AEP).

**[!DNL Marketo Measure]Níveis 1 a 3**

![](assets/marketo-measure-ultimate-overview-1.png)

**[!DNL Marketo Measure Ultimate]**

![](assets/marketo-measure-ultimate-overview-2.png)

## Novidades da versão [!DNL Marketo Measure Ultimate] {#whats-new-in-marketo-measure-ultimate}

**Importar dados B2B por meio da AEP**

Espera-se que os profissionais de marketing tragam seus dados B2B (por exemplo, conta, oportunidade, contato, lead, campanha, membro da campanha, atividade) por meio da AEP. As conexões diretas de CRM e Marketo Engage não estão mais disponíveis para o Ultimate. Os profissionais de marketing continuarão trazendo dados da Plataforma de publicidade por meio de conexões diretas e rastreando atividades da Web por meio de [!DNL Marketo Measure] javascript.

![](assets/marketo-measure-ultimate-overview-3.png)

**Configuração de moeda padrão**

[!DNL Marketo Measure Ultimate] definirá a moeda padrão como USD até que o usuário a altere. A configuração de uma nova moeda padrão atualizará os dados sem reprocessamento. Desde que a moeda selecionada esteja presente como um código ISO de destino, não será necessário enviar taxas de conversão.

![](assets/marketo-measure-ultimate-overview-4.png)

**[!DNL Marketo Measure Ultimate]Área restrita**

[!DNL Marketo Measure Ultimate] deve ser mapeada para uma sandbox da AEP antes de criar a [!DNL Marketo Measure] fluxos de dados de destino na AEP.

>[!NOTE]
>
>A [!DNL Marketo Measure Ultimate] a instância de produção precisa ser mapeada para uma sandbox de produção da AEP, uma [!DNL Marketo Measure Ultimate] A instância de desenvolvedores do precisa ser mapeada para uma sandbox de desenvolvedores da AEP.

Depois que a seleção de mapeamento da sandbox é salva, não é possível alterá-la no aplicativo neste momento. Para alterá-lo, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

Os dados de uma determinada entidade (por exemplo, Conta) de uma determinada fonte de dados só podem entrar em um conjunto de dados. Cada conjunto de dados pode ser incluído somente em um fluxo de dados. As violações interromperão o fluxo de dados no tempo de execução.

![](assets/marketo-measure-ultimate-overview-5.png)

**Mapeamento de estágios**

Todos [!DNL Marketo Measure Ultimate] As regras do são específicas do conjunto de dados. As regras de Mapeamento de Estágio devem ser criadas para todos os conjuntos de dados e todos os estágios selecionados.

Há seis estágios integrados:

* Lead perdido
* Abrir Cliente Potencial
* Cliente Potencial Convertido
* Oportunidade perdida
* Oportunidade aberta
* Oportunidade Ganha

As seções Perdido, Ganhado e Convertido não permitem estágios personalizados. No entanto, os dados de origem podem ser mapeados para os estágios integrados Perda/Ganhado/Convertido ao atualizar a regra de mapeamento.

Estágios personalizados só podem ser definidos para seções Abertas.
Não incluímos mais estágios de CRM automaticamente no mapeamento de estágio.

Quatro estágios integrados devem ser mapeados com regras (as regras de mapeamento para os outros dois, Lead Lost e Lead Converted, são opcionais):

* Abrir Cliente Potencial
* Oportunidade perdida
* Oportunidade aberta
* Oportunidade Ganha

As condições das regras são específicas do conjunto de dados. As regras de Mapeamento de Estágio devem ser criadas para todos os conjuntos de dados e todos os estágios, exceto Lead Perdido e Lead Convertido.

Nenhuma seleção para funil vs bumerangue vs modelo personalizado. Todos os estágios são selecionados para funil, bumerangue e modelo personalizado. Há um limite de quantos estágios são compatíveis: 15 personalizados mais 6 estágios integrados.

![](assets/marketo-measure-ultimate-overview-6.png)

As regras de ponto de contato do membro da campanha e as regras de ponto de contato da atividade são específicas do conjunto de dados.

![](assets/marketo-measure-ultimate-overview-7.png)

![](assets/marketo-measure-ultimate-overview-8.png)

Os pontos de contato de atribuição não são gravados no CRM porque o Ultimate não tem uma conexão direta com o CRM.

[!DNL Marketo Measure] Os serviços de ML ABM (correspondência entre lead e conta e pontuação preditiva de engajamento) não estão disponíveis para [!DNL Marketo Measure Ultimate]. Você pode encontrar esses serviços incluídos gratuitamente na edição B2B da RT-CDP.

## Limitação {#limitations}

* Campos limitados estão disponíveis para regras de transformação de dados no momento.
* Não há caminho de migração para usuários de Nível 1/2/3 existentes. Requer nova implementação, mas ajudaremos a migrar os dados de atividade da Web rastreados da instância existente.

>[!MORELIKETHIS]
>
>[Destino do Marketo Measure Ultimate](https://experienceleague.adobe.com/docs/experience-platform/destinations/catalog/adobe/marketo-measure-ultimate.html?lang=en){target="_blank"}
