---
unique-page-id: 18874672
description: Como [!DNL Marketo Measure] e [!DNL Salesforce] Interact - Marketo Measure - Documentação do produto
title: Como [!DNL Marketo Measure] e [!DNL Salesforce] interagir
exl-id: c2f9d7ce-c5b8-4664-8f92-cb54255190cd
feature: Salesforce
source-git-commit: afb7805e375f26cc1b2473802582b1999e92cd8b
workflow-type: tm+mt
source-wordcount: '1719'
ht-degree: 16%

---

# Como[!DNL Marketo Measure]e[!DNL Salesforce]interagir {#how-marketo-measure-and-salesforce-interact}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Vamos analisar a relação entre [!DNL Marketo Measure] e Salesforce.

## Salesforce e [!DNL Marketo Measure] {#salesforce-and-marketo-measure}

Quando a variável [!DNL Marketo Measure] a conta é criada e [!DNL Salesforce] está conectado, [!DNL Marketo Measure] começará a enviar dados de marketing para a instância do CRM desde que o [!DNL Marketo Measure] o pacote gerenciado estiver instalado e a variável [!DNL Marketo Measure] O usuário do Salesforce tem permissões de edição.

Se você não instalou o [!DNL Marketo Measure] Pacote do Salesforce, [!DNL Marketo Measure] não gravará dados na sua instância do Salesforce.

![](assets/1-3.png)

Por padrão, [!DNL Marketo Measure] O exporta 200 registros por crédito de API sempre que um trabalho envia dados para seu CRM. Para a maioria dos clientes, isso fornece o equilíbrio ideal entre os créditos de API consumidos pelo [!DNL Marketo Measure] e os requisitos de recursos da CPU no CRM. No entanto, para clientes com configurações complexas de CRM, como workflows e acionadores, um tamanho de lote menor pode ser útil para melhorar o desempenho do CRM. Para o efeito, [!DNL Marketo Measure] permite que os clientes configurem o tamanho do lote de exportação do CRM. Essa configuração está disponível no [!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Geral] página no [!DNL Marketo Measure] o aplicativo web e os clientes podem escolher entre tamanhos de lote de 200 (padrão), 100, 50 ou 25.

![](assets/how-bizible-and-salesforce-interact-2.png)

Ao modificar essa configuração, lembre-se de que tamanhos de lote menores consumirão mais créditos de API do seu CRM. É aconselhável reduzir o tamanho do lote somente se você estiver enfrentando um tempo limite de CPU ou alta carga de CPU no seu CRM.

## Objetos e acesso padrão do Salesforce {#salesforce-standard-objects-and-access}

Isso lista as [!DNL Salesforce] Objetos Padrão que [!DNL Marketo Measure] O interage com o, bem como com os campos personalizados que adicionamos a esses objetos depois que a conexão é estabelecida e o [!DNL Marketo Measure] pacote está instalado. Pronto para uso, [!DNL Marketo Measure] NÃO gravará em nenhum padrão [!DNL Salesforce] Campos de objeto.

**Cliente potencial**

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
   <td><p>DataDaÚltimaModificação</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>DataConvertida</p></td> 
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
   <td><p>bizible2_Account_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_LC_c</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_LC_c</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
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
   <td><p>bizible2_Ad_Campaign_Name_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_LC_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_FT_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_LC_c</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
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
   <td><p>bizible2_Engagement_Score_c</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
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
   <td><p>FecharData</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>NomeEstágio</p></td> 
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
   <td><p>bizible2_Bizible_Opportunity_Amount_c</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>DataConvertida</p></td> 
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
   <td><p>DataDaÚltimaModificação</p></td> 
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
   <td><p>ContactId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>LeadId</p></td> 
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
   <td><p>CampaignId</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Touchpoint_Date_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Date_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Contact_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Leade_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Opportunity_c</p></td> 
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
>* Cliente potencial
>* Oportunidade
>* Tarefa


## [!DNL Marketo Measure] Objetos personalizados no [!DNL Salesforce] {#marketo-measure-custom-objects-in-salesforce}

Além de criar campos personalizados nos Objetos Padrão do SFDC, uma vez que a variável [!DNL Marketo Measure] estiver instalado, ele criará alguns Objetos personalizados. Abaixo está uma lista desses Objetos personalizados, juntamente com uma tabela que indica os campos que [!DNL Marketo Measure] O gravará em.

**Ponto de contato do comprador**

O ponto de contato do comprador é um [!DNL Marketo Measure] Custom Object para encapsular as interações de marketing para contatos, leads e ocorrências.

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Person_c</p></td> 
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
   <td><p>bizible2_UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_Path_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Type_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Id_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Content_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Id_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Platform_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Browser_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_City__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Country_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Region_c</p></td> 
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
   <td><p>bizible2_Keyword_MatchType_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Position_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Text_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Medium_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Search_Phrase_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Segment_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_First_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Lead_Creation_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_U_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Destination_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Case_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Contact_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**[!DNL Marketo Measure]Pessoa**

A variável [!DNL Marketo Measure] A pessoa é um [!DNL Marketo Measure] Objeto personalizado relacionado aos objetos cliente potencial, contato e caso.

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Lead_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Case_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Contact_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x </p></td> 
  </tr> 
 </tbody> 
</table>

## Ponto de contato de atribuição do comprador {#buyer-attribution-touchpoint}

O ponto de contato de atribuição do comprador é um [!DNL Marketo Measure] Custom Object para encapsular a influência do marketing em Oportunidades.

**Ponto de contato de atribuição do comprador**

<table> 
 <tbody> 
  <tr> 
   <th><p>Campos</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Account_c</p></td> 
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
   <td><p>bizible2_Contact_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Opportunity_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_UniqueId__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_Path_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Type_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Id_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Content_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Id_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Id__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Name__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Platform_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Browser_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_City__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Country_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Region_c</p></td> 
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
   <td><p>bizible2_Keyword_MatchType_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Position_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Text_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Medium_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_Raw_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Search_Phrase_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Segment_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_First_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Lead_Conversion_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_U_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_W_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Custom_Model_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_First_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Lead_Creation_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_U_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_W_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Custom_Model_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Destination_URL__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_First_Touch_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Lead_Creation_Touch__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_U_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_W_Shaped_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Custom_Model_c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Custom_Model_2__c</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>
