---
description: '''[!DNL Marketo Measure] Visão geral do Ultimate - [!DNL Marketo Measure] - Documentação do produto'
title: '[!DNL Marketo Measure] Visão geral do Ultimate'
exl-id: fada9479-0671-4698-8043-c67d7977577b
source-git-commit: 4a5e720a91e8b229ad2f2889dbf87f5c43767411
workflow-type: tm+mt
source-wordcount: '707'
ht-degree: 1%

---

# [!DNL Marketo Measure] Visão geral do Ultimate {#marketo-measure-ultimate-overview}

[!DNL Marketo Measure] (anteriormente Bizible) fornece aos profissionais de marketing informações sobre quais esforços de marketing são os mais eficazes na geração de receita e na maximização do retorno sobre o investimento de sua empresa. [!DNL Marketo Measure] O é uma solução de atribuição de marketing que rastreia e faz relatórios automaticamente sobre o desempenho do canal, oferecendo visibilidade de quais canais impulsionam mais o envolvimento do cliente e permitindo otimizar seus gastos com marketing de acordo.

[!DNL Marketo Measure Ultimate] contém os recursos adicionais:

* Assimilar de quase qualquer fonte de dados, bem como várias fontes de dados do mesmo tipo para trazer todos os seus dados para atribuição.
   * Use com quase qualquer CRM, não apenas Salesforce e Dynamics.
   * Conectar várias instâncias do CRM e/ou instâncias do MAP a uma [!DNL Marketo Measure] instância.
   * Traga dados de registro e participação de webinários de terceiros.

* Transforme seus dados com grande flexibilidade por meio dos recursos de mapeamento de campo e transformação, para garantir a forma correta dos dados.

* Disponibilize os insights de atribuição para aplicativos externos por meio do data warehouse incluído para integrar os insights em seu fluxo de trabalho. Dados de resultados mais granulares e relatórios baseados em BI, incluindo a Data Warehouse de Snowflake, que fornece acesso a dados de resultados granulares e a capacidade de usar qualquer ferramenta de BI para análise e relatórios.

* Integração com RTCDP (B2B ou B2P Edition), fornecendo uma solução de atribuição B2B integrada para clientes RTCDP como RTCDP e [!DNL Marketo Measure] ambos trabalham com dados centralizados do Adobe Experience Platform (AEP).

**[!DNL Marketo Measure]Camadas 1-3**

![](assets/marketo-measure-ultimate-overview-1.png)

**[!DNL Marketo Measure Ultimate]**

![](assets/marketo-measure-ultimate-overview-2.png)

## Novidades da versão [!DNL Marketo Measure Ultimate] {#whats-new-in-marketo-measure-ultimate}

**Importar dados B2B por meio do AEP**

Espera-se que os profissionais de marketing forneçam seus dados B2B (por exemplo, Conta, Oportunidade, Contato, Cliente Potencial, Campanha, Membro da Campanha, Atividade) por meio da AEP. As conexões diretas de CRM e Marketo Engage não estão mais disponíveis para o Ultimate. Os profissionais de marketing continuarão a trazer dados da plataforma de publicidade por meio de conexões diretas e do rastreamento de atividades da Web por meio de [!DNL Marketo Measure] javascript.

![](assets/marketo-measure-ultimate-overview-3.png)

**Configuração de Moeda Padrão**

[!DNL Marketo Measure Ultimate] definirá a moeda padrão como USD até que o usuário a altere. Definir uma nova moeda padrão atualizará os dados sem reprocessar. Desde que a moeda selecionada esteja presente como um código ISO de destino, não é necessário enviar taxas de conversão.

![](assets/marketo-measure-ultimate-overview-4.png)

**[!DNL Marketo Measure Ultimate]Área restrita**

[!DNL Marketo Measure Ultimate] A instância deve ser mapeada para uma sandbox AEP antes de criar o [!DNL Marketo Measure] fluxos de dados de destino no AEP.

>[!NOTE]
>
>A [!DNL Marketo Measure Ultimate] a instância de produção precisa ser mapeada para uma sandbox de produção AEP, uma [!DNL Marketo Measure Ultimate] a instância de desenvolvedores precisa ser mapeada para uma sandbox de desenvolvedores AEP.

Depois que a seleção de mapeamento da sandbox é salva, não é possível alterá-la no aplicativo no momento. Para alterá-lo, entre em contato com o [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

Os dados de uma determinada entidade (por exemplo, Conta) de uma determinada fonte de dados só podem entrar em um conjunto de dados. Cada conjunto de dados só pode ser incluído em um fluxo de dados. As violações interromperão o fluxo de dados em tempo de execução.

![](assets/marketo-measure-ultimate-overview-5.png)

**Mapeamento de estágios**

Todos [!DNL Marketo Measure Ultimate] As regras do são específicas do conjunto de dados. As regras de Mapeamento de Estágio devem ser criadas para todos os conjuntos de dados e todos os estágios selecionados.

Há seis estágios integrados:

* Lead perdido
* Abertura de lead
* Cliente Potencial Convertido
* Oportunidade perdida
* Abertura da Oportunidade
* Oportunidade Ganha

As seções Perdido, Ganhado e Convertido não permitem estágios personalizados. Os dados de origem podem, no entanto, ser mapeados para os estágios integrados Perdido/Ganhado/Convertido ao atualizar a regra de mapeamento.

Os estágios personalizados só podem ser definidos para seções Abertas.
Não incluímos mais automaticamente os estágios do CRM no mapeamento de palco.

Quatro estágios integrados devem ser mapeados com regras (as regras de mapeamento para os outros dois, Lead Lost e Lead Converted são opcionais):

* Abertura de lead
* Oportunidade perdida
* Abertura da Oportunidade
* Oportunidade Ganha

As condições da regra são específicas do conjunto de dados. As regras de Mapeamento de Estágio devem ser criadas para todos os conjuntos de dados e todos os estágios, exceto para Lead Lost e Lead Converted.

Nenhuma seleção para funil vs bumerangue versus modelo personalizado. Todos os estágios são selecionados para funil, bumerangue e modelo personalizado. Há um limite para quantas etapas apoiamos: 15 personalizados mais 6 estágios integrados.

![](assets/marketo-measure-ultimate-overview-6.png)

As regras do ponto de contato do membro da campanha e as regras do ponto de contato da atividade são específicas do conjunto de dados.

![](assets/marketo-measure-ultimate-overview-7.png)

![](assets/marketo-measure-ultimate-overview-8.png)

Pontos de contato de atribuição não são gravados no CRM porque o Ultimate não tem uma conexão direta com o CRM.

[!DNL Marketo Measure] Os serviços de ABM ML (Correspondência de cliente potencial e Pontuação de engajamento preditivo) não estão disponíveis para [!DNL Marketo Measure Ultimate]. Você pode encontrar esses serviços incluídos gratuitamente na edição RT-CDP B2B.

## Limitações {#limitations}

* Campos limitados estão disponíveis para regras de transformação de dados no momento.
* Não há um caminho de migração para usuários de Nível 1/2/3 existentes. Requer nova implementação, mas ajudaremos a migrar os dados de atividade da Web rastreada da instância existente.

>[!MORELIKETHIS]
>
>[Destino Marketo Measure Ultimate](https://experienceleague.adobe.com/docs/experience-platform/destinations/catalog/adobe/marketo-measure-ultimate.html?lang=en){target="_blank"}
