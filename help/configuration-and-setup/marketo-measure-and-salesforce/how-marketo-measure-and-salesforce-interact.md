---
unique-page-id: 18874672
description: Como o  [!DNL Marketo Measure]  e o  [!DNL Salesforce]  interagem - Marketo Measure - Documentação do produto
title: Como o  [!DNL Marketo Measure]  e o  [!DNL Salesforce]  interagem
exl-id: c2f9d7ce-c5b8-4664-8f92-cb54255190cd
feature: Salesforce
source-git-commit: afb7805e375f26cc1b2473802582b1999e92cd8b
workflow-type: ht
source-wordcount: '1719'
ht-degree: 100%

---

# Como o [!DNL Marketo Measure] e o [!DNL Salesforce] interagem {#how-marketo-measure-and-salesforce-interact}

>[!NOTE]
>
>Você pode ver instruções especificando “[!DNL Marketo Measure]” em nossa documentação, mas ainda ver “Bizible” em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Vamos analisar em alto nível a relação entre o [!DNL Marketo Measure] e o Salesforce.

## Salesforce e [!DNL Marketo Measure] {#salesforce-and-marketo-measure}

Quando a conta do [!DNL Marketo Measure] é criada e o [!DNL Salesforce] é conectado, o [!DNL Marketo Measure] começará a enviar dados de marketing para a instância do CRM desde que o o pacote gerenciado do [!DNL Marketo Measure] esteja instalado e o usuário do Salesforce no [!DNL Marketo Measure] tenha permissões de edição.

Se você não instalou o pacote do Salesforce para [!DNL Marketo Measure], o [!DNL Marketo Measure] não gravará dados na sua instância do Salesforce.

![](assets/1-3.png)

Por padrão, o [!DNL Marketo Measure] exporta 200 registros por crédito de API sempre que um trabalho envia dados para seu CRM. Para a maioria dos clientes, isso fornece o equilíbrio ideal entre os créditos de API consumidos pelo [!DNL Marketo Measure] e os requisitos de recursos da CPU no CRM. No entanto, para clientes com configurações complexas de CRM, como fluxos de trabalho e acionadores, um tamanho de lote menor pode ser útil para melhorar o desempenho do CRM. Para isso, o [!DNL Marketo Measure] permite que os clientes configurem o tamanho do lote de exportação do CRM. Essa configuração está disponível na página [!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Geral] no aplicativo web do [!DNL Marketo Measure], e os clientes podem escolher entre tamanhos de lote de 200 (padrão), 100, 50 ou 25.

![](assets/how-bizible-and-salesforce-interact-2.png)

Ao modificar essa configuração, lembre-se de que tamanhos de lote menores consumirão mais créditos de API do seu CRM. É aconselhável reduzir o tamanho do lote somente se você estiver atingindo o tempo limite da CPU ou uma alta carga de CPU no CRM.

## Objetos e acesso padrão do Salesforce {#salesforce-standard-objects-and-access}

Lista os objetos padrão do [!DNL Salesforce] com os quais o [!DNL Marketo Measure] interage, bem como os campos personalizados que adicionamos a esses objetos depois que a conexão é estabelecida e o pacote do [!DNL Marketo Measure] é instalado. Pronto para uso, o [!DNL Marketo Measure] NÃO gravará em nenhum campo de objeto padrão do [!DNL Salesforce].

**Lead**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Email</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Status</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CreatedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedContactId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedOpportunityId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsConverted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Site</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Empresa</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Account__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

**Contato**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>Conta</p></td> 
   <td><p>Padrão</p></td> 
   <td><span>x</span></td> 
   <td><br></td> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Email</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Data de criação</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

**Caso**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CreatedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>SuppliedEmail</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_FT__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source_LC__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

**Conta**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Site</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Engagement_Score__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

**Oportunidade**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>Conta</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td><br></td> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CreatedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsWon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsClosed</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CloseDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>StageName</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Valor</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Bizible_Opportunity_Amount__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

**Campanha**

<table> 
 <colgroup> 
  <col> 
  <col> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Email</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Status</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CreatedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedContactId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ConvertedOpportunityId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsConverted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Site</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Empresa</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>Tipo</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td><br></td> 
  </tr> 
 </tbody> 
</table>

**Membro de campanha**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>CreatedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LastModifiedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsDeleted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>FirstRespondedDate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>HasResponded</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ID de contato</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ID de lead</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>IsConverted</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>ID de campanha</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Bizible_Touchpoint_Date__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Status_Date__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Status_Contact__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Status_Leade__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Status_Opportunity__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

>[!NOTE]
>
>Para garantir a precisão da captura de eventos de exclusão pelo Marketo Measure em sua conta do Salesforce, são necessárias permissões replicáveis para os objetos abaixo. As permissões replicáveis vêm, por padrão, com os seguintes objetos:
>
>* Conta
>* Campanha
>* Membro de campanha
>* Contato
>* Evento
>* Lead
>* Oportunidade
>* Tarefa


## Objetos personalizados do [!DNL Marketo Measure] no [!DNL Salesforce] {#marketo-measure-custom-objects-in-salesforce}

Além de criar campos personalizados nos objetos padrão do SFDC, uma vez que o pacote do [!DNL Marketo Measure] estiver instalado, ele criará alguns objetos personalizados. Abaixo está uma lista desses objetos personalizados, juntamente com uma tabela que indica os campos em que o [!DNL Marketo Measure] gravará.

**Buyer Touchpoint**

O Buyer Touchpoint é um objeto personalizado do [!DNL Marketo Measure] para encapsular as interações de marketing de contatos, leads e casos.

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2__Bizible_Person__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__SF_Campaign__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_Path__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Type__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Content__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Group_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Group_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Placement_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Placement_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Site_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Site_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Form_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Form_URL_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Platform__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Browser__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_City__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_Country__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_Region__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_MatchType__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Position__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_Text__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Medium__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Referrer_Page__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Referrer_Page_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Search_Phrase__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Segment__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_First_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_Lead_Creation_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_U_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Destination_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Case__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Contact__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

Pessoa do **[!DNL Marketo Measure]**

A Pessoa do [!DNL Marketo Measure] é um objeto personalizado do [!DNL Marketo Measure] relacionado aos objetos lead, contato e caso.

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2__UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Lead__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Case__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Contact__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

## Buyer Attribution Touchpoint {#buyer-attribution-touchpoint}

O Buyer Attribution Touchpoint é um objeto personalizado do [!DNL Marketo Measure] para encapsular a influência do marketing nas oportunidades.

**Buyer Attribution Touchpoint**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2__Account__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__SF_Campaign__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Contact__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Opportunity__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Marketing_Channel_Path__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Type__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Content__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Group_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Group_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Campaign_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Placement_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Placement_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Site_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Site_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Form_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Form_URL_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Platform__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Browser__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_City__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_Country__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Geo_Region__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_MatchType__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Position__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Keyword_Text__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Landing_Page_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Medium__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Referrer_Page__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Referrer_Page_Raw__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Search_Phrase__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Date__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Touchpoint_Source__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Segment__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_First_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_Lead_Conversion_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_U_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_W_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_Custom_Model__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Attribution_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_First_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_Lead_Creation_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_U_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_W_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_Custom_Model__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Count_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Ad_Destination_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_First_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_Lead_Creation_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_U_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_W_Shaped__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_Custom_Model__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2__Revenue_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>
