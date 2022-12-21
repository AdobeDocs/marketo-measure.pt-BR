---
unique-page-id: 18874789
description: "[!DNL Marketo Measure] Conjuntos de permissões - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Conjuntos de permissões"
exl-id: 84b7aa24-3934-4584-af05-02e804d00a98
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '276'
ht-degree: 1%

---

# [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets}

Saiba como acessar e atribuir [!DNL Marketo Measure] Conjuntos de permissões no Salesforce.

## [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets-1}

Três conjuntos de permissões são incluídos com o [!DNL Marketo Measure] Pacote Salesforce. Esses conjuntos de permissões fornecem acesso a [!DNL Marketo Measure] para administradores, profissionais de marketing e usuários padrão.

Para acessar e atribuir Conjuntos de Permissões no Salesforce:

1. Clique em **[!UICONTROL Configuração]**.
1. Na margem esquerda, clique em **[!UICONTROL Usuários]**, em seguida **[!UICONTROL Conjuntos de permissões]**.
1. Selecione o [!DNL Marketo Measure] Conjunto de permissões que você gostaria de atribuir.
1. Clique em **[!UICONTROL Gerenciar Atribuições]**, em seguida **[!UICONTROL Adicionar Atribuições]**.
1. Selecione os usuários para o conjunto de permissões e clique em **[!UICONTROL Atribuir]**.

   ![](assets/1-5.png)

## [!DNL Marketo Measure] Conjuntos de permissões explicados {#marketo-measure-permission-sets-explained}

<table> 
 <tbody> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Administrador</strong></span></td> 
   <td><span>Oferece a um administrador SFDC a capacidade de criar, ler, gravar, excluir registros de [!DNL Marketo Measure] objetos. A licença ao abrigo da qual [!DNL Marketo Measure] O envia dados para o SFDC deve ter esse conjunto de permissões ativado. Além disso, é recomendado que esta licença tenha a capacidade de editar leads convertidos nos cenários em que o lead é convertido antes de [!DNL Marketo Measure] aplicação de dados ao registro. Isso garantirá a precisão dos relatórios entre o Salesforce e a [!DNL Marketo Measure]. <a href="http://releasenotes.docs.salesforce.com/en-us/spring17/release-notes/rn_sales_leads_view_converted.htm">Leia mais aqui</a>.</span></td> 
  </tr> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Usuário de campanha de marketing</strong></span></td> 
   <td><span>Oferece a um usuário de marketing a capacidade de ler e gravar registros do [!DNL Marketo Measure] objetos. Todos os membros da equipe de marketing devem ter o [!DNL Marketo Measure] Conjunto de permissões Usuário de marketing ativado. <br></span></td> 
  </tr> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Usuário padrão</strong></span></td> 
   <td><span>Oferece a um usuário a capacidade de ler registros do [!DNL Marketo Measure] objetos.</span></td> 
  </tr> 
 </tbody> 
</table>

As equipes de desenvolvimento de vendas de entrada e os executivos de contas podem se beneficiar do [!DNL Marketo Measure] dados. Se essas funções desejarem usar [!DNL Marketo Measure] nos relatórios, ative a [!DNL Marketo Measure] Conjunto de permissões Usuário padrão.

>[!NOTE]
>
>Além disso, o usuário ao qual estamos conectados precisa ter o &quot;Usuário de marketing&quot; [!DNL Salesforce] Perfil ativado no nível do usuário para que possamos acessar o objeto do Campaign. Para verificar isso, clique em **[!UICONTROL Configuração]** > **[!UICONTROL Gerenciar usuários]** > **[!UICONTROL Perfis]** > **[!UICONTROL Usuário de marketing]** > **Usuários atribuídos**.
