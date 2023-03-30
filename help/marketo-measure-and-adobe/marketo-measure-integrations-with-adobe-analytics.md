---
description: "[!DNL Marketo Measure] Integrações com o Adobe Analytics - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Integrações com [!DNL Adobe Analytics]"
exl-id: 3a125a15-eb74-454a-afb3-75746a1dfac6
source-git-commit: 51397a02872035fef41d308c1f855bcaecc29c4e
workflow-type: tm+mt
source-wordcount: '996'
ht-degree: 0%

---

# [!DNL Marketo Measure] Integrações com o Adobe Analytics {#marketo-measure-integrations-with-adobe-analytics}

A integração dos atributos do cliente B2B permite que usuários mútuos de [!DNL Marketo Measure] e a Adobe Analytics para enriquecer seus [!DNL Adobe Analytics] perfis de usuário com metadados valiosos derivados do [!DNL Marketo Measure] mecanismo de atribuição e por meio de seu recurso de sincronização com CRMs ([!DNL Microsoft Dynamics] e [!DNL Salesforce]). Ele está disponível gratuitamente para todos os clientes que usam [!DNL Adobe Analytics] e [!DNL Marketo Measure].

>[!PREREQUISITES]
>
>Você deve ter assinaturas ativas de ambos [!DNL Marketo Measure] e [!DNL Adobe Analytics].

## Configurar a integração {#configuring-the-integration}

1. Comece criando uma nova Fonte de dados de atributos do cliente no console do Experience Cloud. Instruções detalhadas [pode ser encontrada aqui](https://docs.adobe.com/content/help/en/core-services/interface/customer-attributes/t-crs-usecase.html).

   Anote as seguintes informações, pois elas serão necessárias para algumas das etapas posteriores do processo:

   * A ID de alias, que pode ser qualquer valor desejado. Recomendamos &quot;marketommeasure_id&quot;

   * O nome de host e as credenciais do servidor FTP (nome de usuário e senha)

1. Depois que a Fonte de Dados dos Atributos do Cliente for criada, continue o processo de configuração navegando até a **[!UICONTROL Integrações]** > **[!UICONTROL Conexões]** na tela [!DNL Marketo Measure] menu de administração.

1. Clique no botão **[!UICONTROL Configurar nova conexão de atributos do cliente]** e siga as instruções para configurar a integração dos Atributos do cliente. A interface do usuário solicitará a identificação de alias e as informações de conexão do FTP adquiridas ao criar a Fonte de atributos do cliente no Console dos principais serviços, bem como a seleção do conjunto de atributos da conta que você deseja sincronizar com o [!DNL Adobe Analytics] conta.

   Você também precisará inserir sua ID organizacional do Adobe IMS. Essa ID é exibida no canto inferior direito do Admin Console Adobe Experience Cloud. Para obter mais ajuda para encontrar essa ID, consulte a Equipe da conta do Adobe (seu Gerente de conta).

1. Quando terminar de criar a conexão no [!DNL Marketo Measure] , você precisará voltar para o console do Experience Cloud para [validar o esquema](https://docs.adobe.com/content/help/en/core-services/interface/customer-attributes/validate-schema.html). Você não precisa se preocupar com o upload do arquivo FTP, [!DNL Marketo Measure] O automatizou essa parte para você. Tudo o que você precisa fazer é ir para a tela de esquema &quot;Exibir/editar&quot; da Fonte de atributos do cliente criada na Etapa 1 e informar ao Adobe quais tipos de dados são para cada um dos atributos que [!DNL Marketo Measure] foi enviado em seu nome. Você também pode criar novos nomes compatíveis com a exibição para os atributos carregados, se desejar.

   Se você optou por sincronizar atributos do seu objeto de conta do CRM, é altamente recomendável escolher novos nomes de exibição para eles, como [!DNL Marketo Measure] O preencherá apenas os nomes no nível da API para esses atributos, que normalmente não são amigáveis aos relatórios.

1. A última etapa é configurar as Assinaturas de atributos para os aplicativos do Experience Cloud nos quais você gostaria de usar os atributos.  É possível configurar as Assinaturas para [!DNL Adobe Analytics] ou [!DNL Adobe Target].  Mais informações sobre como fazer isso [pode ser encontrada aqui](https://docs.adobe.com/content/help/en/core-services/interface/customer-attributes/subscription.html).

## Descrições do atributo {#attribute-descriptions}

Ao criar uma nova conexão de atributo do cliente B2B, [!DNL Marketo Measure] O criará automaticamente um conjunto padrão de atributos do cliente B2B para você. Esses atributos são descritos na tabela abaixo.

Além dos listados abaixo, você também pode fazer upload de qualquer atributo anexado ao objeto da conta em seu CRM. Se mais de uma conta estiver vinculada ao usuário em questão, [!DNL Marketo Measure] preencherá todos os valores de atributo de conta correspondentes em uma lista delimitada por ponto e vírgula.

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <td><b>Nome do atributo</b></td> 
   <td><b>Descrição</b></td>
  </tr> 
  <tr> 
   <td>Account.Name</td> 
   <td>Os nomes de conta associados ao visitante da Web. Se mais de uma conta estiver vinculada ao usuário em questão, [!DNL Marketo Measure] preencherá todos os nomes de conta correspondentes em uma lista delimitada por ponto e vírgula.<br/>
   <strong>Observação:</strong> account.name é o nome no nível da API do Salesforce para o atributo name no objeto da conta. Você pode escolher um nome de exibição melhor (por exemplo, "Empresa") para esse atributo durante a etapa Validação de esquema da configuração de integração (etapa 4).</td>
  </tr>
  <tr> 
   <td>Receita atribuída - MODEL›</td> 
   <td>A receita atribuída a esse cliente em virtude de sua associação com oportunidades vencidas em seu CRM, conforme calculado pela variável [!DNL Marketo Measure] mecanismo de atribuição.<br/>
   Haverá um desses atributos para cada modelo de atribuição que [!DNL Marketo Measure] as subscrições permitem (por exemplo, "Receita atribuída - caminho completo").</td>
  </tr>
  <tr> 
   <td>Estágio do funil mais profundo</td> 
   <td>O estágio de funil mais profundo de qualquer oportunidade aberta associada ao usuário em questão.</td>
  </tr>
  <tr> 
   <td>Oportunidades abertas</td> 
   <td>Uma lista delimitada por ponto e vírgula das IDs de oportunidade às quais um determinado usuário está vinculado de acordo com seus dados de CRM.</td>
  </tr> 
 </tbody> 
</table>

**Uma observação sobre limites de atributos**

Observe que os atributos encontrados por meio dessa integração ainda contarão em relação aos limites de atributo contratual em [!DNL Adobe Analytics] e [!DNL Adobe Target]. Somente atributos que são revelados por meio de uma Assinatura de atributo (etapa 5 em [Configurar a integração](#configuring-the-integration)) contará em relação ao limite do aplicativo assinado.

## Perguntas frequentes {#faqs}

**Como alterar o conjunto de atributos que desejo compartilhar por meio dessa integração?**

Para um atributo compartilhado por [!DNL Marketo Measure] à sua organização do Adobe IMS por meio dessa integração para que ela fique visível e seja usada em [!DNL Adobe Analytics], ele precisa ser exibido por meio de uma Assinatura de atributo configurada no Console dos serviços principais. Portanto, se você deseja remover um atributo para que ele não apareça mais em [!DNL Adobe Analytics], é possível fazer isso simplesmente excluindo a assinatura do atributo.

Também é possível excluir a conexão do Atributo do cliente B2B em [!DNL Marketo Measure] e recrie-a com o atributo que não deseja mais compartilhar excluído da configuração da conexão. Da mesma forma, para adicionar atributos à integração, é necessário excluir a conexão existente e criar uma nova com os atributos desejados adicionados à configuração.

Considerando o acima, é altamente recomendável que, ao configurar a conexão de atributo pela primeira vez, seja o mais inclusivo possível ao selecionar atributos.

**Quais são alguns exemplos de casos de uso para essa integração?**

1. Métricas de tráfego baseadas em conta: Usando o atributo de nome de conta, é possível criar segmentos de uma ou mais contas de destino no Adobe Analytics e analisar métricas de tráfego do site apenas para o subconjunto de tráfego originado de contas de destino.
1. Análise de conteúdo: Use a métrica de receita para analisar qual conteúdo do site é mais atraente para os clientes que finalmente compram seu produto ou serviço, ou aqueles que atingem um estágio de funil específico de interesse.
1. Suporte ao vivo: Gerencie sua equipe de vendas com insight acionável ao analisar o comportamento do site para usuários associados a uma oportunidade aberta específica em seu CRM.
