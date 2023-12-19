---
description: '[!DNL Marketo Measure] Guia de implementação do Ultimate - [!DNL Marketo Measure] - Documentação do produto'
title: '[!DNL Marketo Measure] Guia de implementação do Ultimate'
hide: true
hidefromtoc: true
feature: Integration, Tracking, Attribution
source-git-commit: d8c1962aaf1830970c4cbde4385d05ca4ad3139e
workflow-type: tm+mt
source-wordcount: '978'
ht-degree: 6%

---

# [!DNL Marketo Measure] Guia de implementação do Ultimate {#marketo-measure-ultimate-implementation-guide}

FRASE DE INTRODUÇÃO

## Principais diferenças ao usar o Ultimate em relação às camadas padrão {#main-differences-when-using-ultimate-over-standard-tiers}

Importar dados B2B por meio da AEP: espera-se que os profissionais de marketing tragam seus dados B2B (por exemplo, conta, oportunidade, contato, lead, campanha, membro da campanha, atividade) por meio da AEP. Assimilação de praticamente qualquer fonte de dados, bem como de várias fontes de dados do mesmo tipo para trazer todos os seus dados para atribuição.

* Use com quase qualquer CRM, não apenas o Salesforce e o Dynamics.
* Conecte várias instâncias do CRM e/ou do MAP a uma instância do Marketo Measure.
* Traga dados de registro e participação em webinários de terceiros.

As conexões diretas de CRM e Marketo Engage não estão mais disponíveis para o Ultimate.

* O Ultimate não envia dados de volta para o CRM. Os clientes podem consumir dados do data warehouse.
* Os profissionais de marketing continuarão trazendo dados da Plataforma de publicidade por meio de conexões diretas e rastreando atividades da Web pelo javascript do Marketo Measure.

Os usuários finais serão provisionados com a AEP. Se eles já tiverem o AEP, não provisionaremos novamente uma nova instância.

* A versão da AEP provisionada incluirá todos os conectores de origem, modelagem de dados de esquema, conjuntos de dados, serviço de consulta ad hoc e um destino somente para o Marketo Measure.

Saiba mais sobre [Marketo Measure Ultimate](/help/marketo-measure-ultimate/marketo-measure-ultimate-overview.md).

## Esquemas e conjuntos de dados {#schemas-and-datasets}

>[!NOTE]
>
>Confira [Blocos de construção de um esquema](https://experienceleague.adobe.com/docs/experience-platform/xdm/schema/composition.html?lang=en#building-blocks-of-a-schema) para obter uma visão geral de esquemas, classes e grupos de campos.

**Esquema XDM = Classe + Grupo de campos de esquema&#42;**

* Os campos obrigatórios não podem ser alterados. Os clientes podem criar e adicionar campos personalizados, conforme necessário.
* Exemplo de nome de campo com base na hierarquia: accountOrganization.annualRevenue.amount

&#42; _Um esquema consiste em uma classe e zero ou mais grupos de campos de esquema. Isso significa que você pode compor um esquema de conjunto de dados sem usar grupos de campos._

![](assets/marketo-measure-ultimate-implementation-guide-1.png)

[Visão geral dos conjuntos de dados](https://experienceleague.adobe.com/docs/experience-platform/catalog/datasets/overview.html): todos os dados assimilados com sucesso na AEP são mantidos no Data Lake como conjuntos de dados. Um conjunto de dados é uma construção de armazenamento e gerenciamento para uma coleção de dados, normalmente uma tabela, que contém um esquema (colunas) e campos (linhas).

## Criação de um esquema {#creating-a-schema}

Recomendamos usar um utilitário de geração automática para criar 10 esquemas B2B padrão.

* Etapas para baixar e configurar o utilitário [pode ser encontrado aqui](https://experienceleague.adobe.com/docs/experience-platform/sources/connectors/adobe-applications/marketo/marketo-namespaces.html#set-up-b2b-namespaces-and-schema-auto-generation-utility).

Para aqueles com um _**Direito de CDP**_: crie esquemas indo até a página Origens.

* Em uma origem, selecione Adicionar dados > Usar modelos

![](assets/marketo-measure-ultimate-implementation-guide-2.png)

* Selecione uma conta e todos os modelos B2B para criar 10 esquemas B2B padrão.

![](assets/marketo-measure-ultimate-implementation-guide-3.png)

## Fluxos de dados {#dataflows}

[Visão geral dos fluxos de dados](https://experienceleague.adobe.com/docs/experience-platform/dataflows/home.html)

**Etapas para criar um fluxo de dados:**

1. Selecione uma Origem.
1. Selecione uma conta existente ou crie uma conta.
1. Selecione um tipo de dados na lista de tipos disponíveis para importar da Origem.
1. Selecione um conjunto de dados existente ou crie um novo.
1. Mapeie os campos da Origem para o esquema.

   >[!NOTE]
   >
   >* Se você mapear um tipo de esquema para outro idêntico, ele será feito automaticamente.
   >* Você também pode importar o mapeamento de outro fluxo no sistema.
   >* Você pode mapear um campo de Origem para vários campos de destino, mas não pode fazer o oposto.
   >* É possível criar campos calculados (ExL: funções de mapeamento de Preparo de dados).

   >[!CAUTION]
   >
   >* Você poderia editar um fluxo de dados, mas os dados não são preenchidos retroativamente quando um mapeamento é alterado.
   >* Se um campo obrigatório for NULL, o fluxo inteiro será rejeitado.

   >[!NOTE]
   >
   >[Requisito de integridade de dados do Marketo Measure Ultimate](help/marketo-measure-ultimate/data-integrity-requirement.md)

1. Defina uma cadência de carregamento de dados.
1. Revisar e concluir.
1. Verifique a página &quot;Status da conta&quot; nas configurações da interface do usuário do Measure para ver o status do fluxo de dados.

**Monitoramento:**

Página Origens > Fluxos de dados para verificar o status dos fluxos de dados

* Para exibir os detalhes da atividade de um conjunto de dados, basta clicar nele.
* Para exibir erros de fluxo de dados, selecione um fluxo de dados, escolha uma execução de fluxo de dados e clique em &quot;Visualização de diagnóstico de erro&quot;.

## Inspeção de dados {#data-inspection}

ExL: requisito de integridade de dados do Marketo Measure Ultimate Este documento inclui campos obrigatórios para cada XDM, bem como consultas de inspeção. Ele será publicado no ExL. - JÁ ESTÁ MARCADO ACIMA - POST DE NOVO???

Opção 1: para executar consultas diretamente da interface do usuário, acesse a guia Consultas em Gerenciamento de dados.

![](assets/marketo-measure-ultimate-implementation-guide-4.png)

Opção 2: [Baixar e usar o PSQL](https://experienceleague.adobe.com/docs/experience-platform/query/clients/psql.html) (mais rápido e mais confiável)

## Ativar conjunto de dados para o Marketo Measure {#activate-dataset-for-marketo-measure}

Antes de começar, vá para a seção &quot;Experience Platform > Mapeamento da sandbox&quot; nas configurações da interface do usuário do Measure e mapeie uma sandbox.

>[!CAUTION]
>
>Isto não pode ser alterado depois de selecionado.

1. Na AEP, acesse a &quot;página Destinos > Marketo Measure&quot; para exportar conjuntos de dados.
1. Configurar destino.
1. Ativar conjunto de dados.
1. Verifique a página &quot;Status da conta&quot; nas configurações da interface do usuário do Measure para ver o status do fluxo de dados.

>[!NOTE]
>
>* Os dados de uma determinada entidade (por exemplo, Conta) de uma determinada fonte só podem entrar em um conjunto de dados. Cada conjunto de dados pode ser incluído somente em um fluxo de dados. As violações interromperão o fluxo de dados no tempo de execução.
>* Exclua todo o destino na AEP para excluir dados na Measure. Se desabilitada, somente as exportações de novos dados serão interrompidas e os dados antigos serão mantidos.
>* A configuração de Medida será basicamente a mesma, mas algumas partes, como o Mapeamento de preparo, serão diferentes.
>* Leva algumas horas para um novo fluxo de dados gerar uma execução de fluxo e, em seguida, eles ocorrem em intervalos regulares de hora em hora.

Em Measure, a moeda padrão precisa ser definida na seção &quot;Moeda&quot;

* Se você usar várias moedas, o esquema de taxa de conversão monetária deverá ser preenchido na AEP para que possamos ler e usar para conversões.

**Mapeamento de estágios:**

Os estágios não são importados automaticamente dos dados do usuário, portanto, todos os estágios devem ser mapeados manualmente.

* Os usuários podem mapear estágios de diferentes fontes.

![](assets/marketo-measure-ultimate-implementation-guide-5.png)

Se os estágios não forem mapeados, o sistema não funcionará porque não haverá para onde os dados vão.

**Regras de membros da campanha:**

É necessário escolher um conjunto de dados e definir regras para cada um.

**Regras de eventos de experiência:**

É necessário escolher um conjunto de dados e selecionar tipos de atividade.

* Ainda não há suporte para atividades personalizadas.
* Se o cliente tiver atividades que não se encaixam nas opções disponíveis, sugerimos categorizá-las como &quot;Momentos interessantes&quot; e usar campos personalizados para diferenciá-los.

**Canais offline:**

* Não fazemos regras de mapeamento de canal específicas para conjuntos de dados, portanto, isso seria global.
* Eventualmente, precisamos corresponder o Tipo de campanha de CRM e o Canal, mas, por enquanto, podemos mapear o nome do canal para ambos os campos como uma solução alternativa.
* **Regras de canal: dados preenchidos retroativamente não terão dados de transição de estágio.**

As configurações de ponto de contato e segmento permanecem as mesmas.
