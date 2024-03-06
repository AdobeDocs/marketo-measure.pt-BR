---
description: "[!DNL Marketo Measure] Integrações com o Adobe Analytics - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Integração com o [!DNL Adobe Analytics]"
exl-id: 3a125a15-eb74-454a-afb3-75746a1dfac6
feature: Integration
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '922'
ht-degree: 1%

---

# [!DNL Marketo Measure] Integrações com o Adobe Analytics {#marketo-measure-integrations-with-adobe-analytics}

A integração de atributos do cliente B2B permite que os usuários mútuos de [!DNL Marketo Measure] e Adobe Analytics para enriquecer sua [!DNL Adobe Analytics] perfis de usuário com metadados valiosos derivados do [!DNL Marketo Measure] mecanismo de atribuição e por meio de seu recurso de sincronização com CRMs ([!DNL Microsoft Dynamics] e [!DNL Salesforce]). Ele está disponível gratuitamente para todos os clientes que usam [!DNL Adobe Analytics] e [!DNL Marketo Measure].

>[!PREREQUISITES]
>
>Você deve ter assinaturas ativas para ambos [!DNL Marketo Measure] e [!DNL Adobe Analytics].

## Configurar a integração {#configuring-the-integration}

1. Crie uma nova Fonte de dados de Atributos do cliente em seu console do Experience Cloud. Instruções detalhadas [pode ser encontrado aqui](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/t-crs-usecase.html?lang=pt-BR).

   Anote as seguintes informações, necessárias nas etapas posteriores:

   * A ID de alias, que pode ser qualquer valor que você desejar. Recomendamos &quot;marketomeasure_id&quot;

   * O nome do host e as credenciais do servidor FTP (nome de usuário e senha)

1. Depois que a Fonte de dados de atributos do cliente for criada, continue o processo de configuração navegando até o **[!UICONTROL Integrações]** > **[!UICONTROL Conexões]** na tela [!DNL Marketo Measure] menu de administração.

1. Clique em **[!UICONTROL Configurar nova conexão de atributos do cliente]** e siga as instruções para configurar a integração de Atributos do cliente. A interface solicita a ID de alias e as informações de conexão FTP adquiridas ao criar a Fonte de atributos do cliente no console dos Serviços principais. Selecione o conjunto de atributos da conta que você gostaria de sincronizar com o seu [!DNL Adobe Analytics] conta.

   Insira a ID organizacional IMS da Adobe. Esse ID é exibido no canto inferior direito do Admin Console Adobe Experience Cloud. Para obter mais ajuda para encontrar essa ID, consulte a Equipe de conta do Adobe (seu gerente de conta).

1. Depois de criar a conexão no seu [!DNL Marketo Measure] conta, você deve voltar para o console do Experience Cloud para [validar o esquema](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/validate-schema.html?lang=en). Você não precisa se preocupar com o upload do arquivo FTP, [!DNL Marketo Measure] O automatizou essa parte para você. Acesse a tela de esquema &quot;Exibir/Editar&quot; da Fonte de atributos do cliente que você criou na Etapa 1 e informe ao Adobe quais são os tipos de dados para cada um dos atributos que [!DNL Marketo Measure] carregou em seu nome. Você também pode criar novos nomes amigáveis para exibição para os atributos carregados, se desejar.

   Se você optou por sincronizar atributos do objeto da conta do CRM, é altamente recomendável escolher novos nomes de exibição para eles, como [!DNL Marketo Measure] O preenche apenas os nomes dos níveis de API desses atributos, que normalmente não são amigáveis para relatórios.

1. A última etapa é configurar as Assinaturas de Atributos para os aplicativos Experience Cloud nos quais você gostaria de usar os atributos. É possível configurar assinaturas para [!DNL Adobe Analytics] ou [!DNL Adobe Target].  Mais informações sobre como fazer isso [pode ser encontrado aqui](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/subscription.html).

## Descrições de atributo {#attribute-descriptions}

Ao criar uma conexão de atributo do cliente B2B, [!DNL Marketo Measure] O cria automaticamente um conjunto padrão de atributos do cliente B2B para você. Esses atributos estão descritos na tabela abaixo.

Além dos listados abaixo, você também pode carregar todos os atributos anexados ao objeto da conta no seu CRM. Se mais de uma conta estiver vinculada ao usuário especificado, [!DNL Marketo Measure] preenche todos os valores de atributo de conta correspondentes em uma lista delimitada por ponto e vírgula.

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
   <td>Os nomes de conta associados ao visitante da Web especificado. Se mais de uma conta estiver vinculada ao usuário especificado, [!DNL Marketo Measure] O preenche todos os nomes de conta correspondentes em uma lista delimitada por ponto e vírgula.<br/>
   <strong>Nota:</strong> account.name é o nome do nível de API do Salesforce para o atributo name no objeto account. Você pode escolher um nome de exibição melhor (por exemplo, "Empresa") para esse atributo durante a etapa Validação de esquema da configuração de integração (etapa 4).</td>
  </tr>
  <tr> 
   <td>Receita atribuída - ✔ MODELO›</td> 
   <td>A receita atribuída a este cliente em virtude de sua associação com oportunidades fechadas em seu CRM, conforme calculada pelo [!DNL Marketo Measure] mecanismo de atribuição.<br/>
   Há um desses atributos para cada modelo de atribuição que sua [!DNL Marketo Measure] as assinaturas permitem (por exemplo, "Receita atribuída - Caminho completo").</td>
  </tr>
  <tr> 
   <td>Estágio de funil mais profundo</td> 
   <td>O estágio de funil mais profundo de qualquer oportunidade aberta associada ao usuário fornecido.</td>
  </tr>
  <tr> 
   <td>Oportunidades abertas</td> 
   <td>Uma lista delimitada por ponto e vírgula das IDs de oportunidade às quais o usuário especificado está vinculado de acordo com seus dados de CRM.</td>
  </tr> 
 </tbody> 
</table>

**Uma observação sobre limites de atributo**

Os atributos exibidos por meio dessa integração contam com os limites de atributo contratuais no [!DNL Adobe Analytics] e [!DNL Adobe Target]. Somente atributos exibidos por meio de uma Assinatura de atributo (etapa 5 em [Configurar a integração](#configuring-the-integration)) contra seu limite para o aplicativo que você assinou.

## FAQs {#faqs}

**Como altero o conjunto de atributos que desejo compartilhar por meio dessa integração?**

Para um atributo compartilhado por [!DNL Marketo Measure] à sua organização Adobe IMS por meio dessa integração para serem visíveis e usados no [!DNL Adobe Analytics], ela deve ser exibida por meio de uma Assinatura de atributo configurada no Console dos Serviços principais. Portanto, se você quiser remover um atributo para que ele não apareça mais em [!DNL Adobe Analytics], você pode fazer isso simplesmente excluindo a assinatura do atributo.

Você também pode excluir a conexão de Atributo do cliente B2B no [!DNL Marketo Measure] e recrie-o com o atributo que você não deseja mais compartilhar excluído da configuração da conexão. Da mesma forma, para adicionar atributos à integração, você deve excluir a conexão existente e criar uma nova com os atributos desejados adicionados à configuração.

Diante do exposto acima, é altamente recomendável que, ao configurar a conexão de atributo pela primeira vez, seja o mais inclusivo possível ao selecionar atributos.

**Quais são alguns exemplos de casos de uso para essa integração?**

1. Métricas de tráfego baseadas em conta: usando o atributo de nome da conta, você pode criar segmentos de uma ou mais contas de destino no Adobe Analytics e analisar métricas de tráfego do site apenas para o subconjunto de tráfego originário de contas de destino.
1. Análise de conteúdo: use a métrica de receita para analisar qual conteúdo de site é mais envolvente para os clientes que compram seu produto ou serviço ou aqueles que atingem um estágio de funil de interesse específico.
1. Suporte Live Deal: capacite sua equipe de vendas com insights acionáveis analisando o comportamento do site para usuários associados a uma oportunidade aberta específica em seu CRM.
