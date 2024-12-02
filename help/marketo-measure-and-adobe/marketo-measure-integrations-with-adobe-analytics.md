---
description: '[!DNL Marketo Measure] Integrações com o Adobe Analytics - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Integrações com  [!DNL Adobe Analytics]'
exl-id: 3a125a15-eb74-454a-afb3-75746a1dfac6
feature: Integration
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '922'
ht-degree: 1%

---

# [!DNL Marketo Measure] Integrações com o Adobe Analytics {#marketo-measure-integrations-with-adobe-analytics}

A integração de Atributos do Cliente B2B permite que os usuários mútuos do [!DNL Marketo Measure] e do Adobe Analytics enriqueçam seus perfis de usuário do [!DNL Adobe Analytics] com metadados valiosos derivados do mecanismo de atribuição do [!DNL Marketo Measure] e por meio de seu recurso de sincronização com CRMs ([!DNL Microsoft Dynamics] e [!DNL Salesforce]). Ele está disponível gratuitamente para todos os clientes que usam o [!DNL Adobe Analytics] e o [!DNL Marketo Measure].

>[!PREREQUISITES]
>
>Você deve ter assinaturas ativas para [!DNL Marketo Measure] e [!DNL Adobe Analytics].

## Configurar a integração {#configuring-the-integration}

1. Crie uma nova Source de dados de atributos do cliente em seu console Experience Cloud. Instruções detalhadas [podem ser encontradas aqui](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/t-crs-usecase.html?lang=pt-BR).

   Anote as seguintes informações, necessárias nas etapas posteriores:

   * A ID de alias, que pode ser qualquer valor que você desejar. Recomendamos &quot;marketomeasure_id&quot;

   * O nome do host e as credenciais do servidor FTP (nome de usuário e senha)

1. Depois que a Source de Dados de Atributos do Cliente for criada, continue o processo de configuração navegando até a tela **[!UICONTROL Integrações]** > **[!UICONTROL Conexões]** no menu de administração [!DNL Marketo Measure].

1. Clique no botão **[!UICONTROL Configurar nova conexão de atributos do cliente]** e siga as instruções para configurar a integração de atributos do cliente. A interface solicita a ID de alias e as informações de conexão FTP adquiridas ao criar a Source de atributos do cliente no console dos serviços principais. Selecione o conjunto de atributos de conta que você deseja sincronizar com sua conta do [!DNL Adobe Analytics].

   Insira a ID organizacional IMS da Adobe. Esse ID é exibido no canto inferior direito do Admin Console Adobe Experience Cloud. Para obter mais ajuda para encontrar essa ID, consulte a Equipe de conta do Adobe (seu gerente de conta).

1. Após concluir a criação da conexão em sua conta do [!DNL Marketo Measure], volte para o console do Experience Cloud para [validar o esquema](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/validate-schema.html?lang=en). Você não precisa se preocupar com o carregamento do arquivo FTP. O [!DNL Marketo Measure] automatizou essa parte para você. Vá para a tela de esquema &quot;Exibir/Editar&quot; da Source de atributos do cliente que você criou na Etapa 1 e informe ao Adobe quais são os tipos de dados para cada um dos atributos que [!DNL Marketo Measure] carregou em seu nome. Você também pode criar novos nomes amigáveis para exibição para os atributos carregados, se desejar.

   Se você optou por sincronizar atributos do objeto de conta do CRM, é altamente recomendável escolher novos nomes de exibição para eles, pois o [!DNL Marketo Measure] preenche apenas os nomes de nível de API desses atributos, que normalmente não são amigáveis para relatórios.

1. A última etapa é configurar as Assinaturas de Atributos para os aplicativos Experience Cloud nos quais você gostaria de usar os atributos. Você pode configurar Assinaturas para [!DNL Adobe Analytics] ou [!DNL Adobe Target].  Mais informações sobre como fazer isso [podem ser encontradas aqui](https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/subscription.html).

## Descrições de atributo {#attribute-descriptions}

Quando você cria uma Conexão de atributo de cliente B2B, o [!DNL Marketo Measure] cria automaticamente um conjunto padrão de Atributos de cliente B2B para você. Esses atributos estão descritos na tabela abaixo.

Além dos listados abaixo, você também pode carregar todos os atributos anexados ao objeto da conta no seu CRM. Se mais de uma conta estiver vinculada ao usuário especificado, [!DNL Marketo Measure] preencherá todos os valores de atributos de conta correspondentes em uma lista delimitada por ponto-e-vírgula.

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
   <td>Os nomes de conta associados ao visitante da Web especificado. Se mais de uma conta estiver vinculada ao usuário especificado, [!DNL Marketo Measure] preencherá todos os nomes de contas correspondentes em uma lista delimitada por ponto-e-vírgula.<br/>
   <strong>Observação:</strong> account.name é o nome no nível da API do Salesforce para o atributo name no objeto account. Você pode escolher um nome de exibição melhor (por exemplo, "Empresa") para esse atributo durante a etapa Validação de esquema da configuração de integração (etapa 4).</td>
  </tr>
  <tr> 
   <td>Receita atribuída - ✔ MODELO›</td> 
   <td>A receita atribuída a este cliente em virtude de sua associação com oportunidades fechadas em seu CRM, conforme calculada pelo mecanismo de atribuição [!DNL Marketo Measure].<br/>
   Há um desses atributos para cada modelo de atribuição que suas assinaturas do [!DNL Marketo Measure] permitem (por exemplo, "Receita atribuída - Caminho completo").</td>
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

Os atributos exibidos por meio dessa integração contam com os limites de atributos contratuais em [!DNL Adobe Analytics] e [!DNL Adobe Target]. Somente atributos exibidos por meio de uma Assinatura de Atributo (etapa 5 em [Configurando a Integração](#configuring-the-integration)) são contados em relação ao limite do aplicativo assinado.

## Perguntas frequentes {#faqs}

**Como altero o conjunto de atributos que desejo compartilhar por meio desta integração?**

Para que um atributo compartilhado por [!DNL Marketo Measure] na sua Organização IMS da Adobe por meio dessa integração seja visível e usado no [!DNL Adobe Analytics], ele deve ser revelado por uma Assinatura de Atributo configurada no Console dos Serviços Principais. Portanto, se você quiser remover um atributo para que ele não apareça mais em [!DNL Adobe Analytics], basta excluir a assinatura do atributo.

Você também pode excluir a conexão de Atributo do cliente B2B em [!DNL Marketo Measure] e recriá-la com o atributo que você não deseja mais compartilhar excluído da configuração da conexão. Da mesma forma, para adicionar atributos à integração, você deve excluir a conexão existente e criar uma nova com os atributos desejados adicionados à configuração.

Diante do exposto acima, é altamente recomendável que, ao configurar a conexão de atributo pela primeira vez, seja o mais inclusivo possível ao selecionar atributos.

**Quais são alguns exemplos de casos de uso para essa integração?**

1. Métricas de tráfego baseadas em conta: usando o atributo de nome da conta, você pode criar segmentos de uma ou mais contas de destino no Adobe Analytics e analisar métricas de tráfego do site apenas para o subconjunto de tráfego originário de contas de destino.
1. Análise de conteúdo: use a métrica de receita para analisar qual conteúdo de site é mais envolvente para os clientes que compram seu produto ou serviço ou aqueles que atingem um estágio de funil de interesse específico.
1. Suporte Live Deal: capacite sua equipe de vendas com insights acionáveis analisando o comportamento do site para usuários associados a uma oportunidade aberta específica em seu CRM.
