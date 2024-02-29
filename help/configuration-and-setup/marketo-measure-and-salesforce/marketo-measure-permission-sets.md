---
unique-page-id: 18874789
description: "[!DNL Marketo Measure] Conjuntos de permissões - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Conjuntos de permissões"
exl-id: 84b7aa24-3934-4584-af05-02e804d00a98
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '260'
ht-degree: 3%

---

# [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets}

Saiba como acessar e atribuir [!DNL Marketo Measure] Conjuntos de permissões no Salesforce.

## [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets-1}

Três conjuntos de permissões estão incluídos com o [!DNL Marketo Measure] Pacote do Salesforce. Esses conjuntos de permissões fornecem acesso a [!DNL Marketo Measure] para administradores, profissionais de marketing e usuários padrão.

Para acessar e atribuir conjuntos de permissões no Salesforce:

1. Clique em **[!UICONTROL Configuração]**.
1. Na margem esquerda, clique em **[!UICONTROL Usuários]**, depois **[!UICONTROL Conjuntos de permissões]**.
1. Selecione o [!DNL Marketo Measure] Conjunto de permissões que você deseja atribuir.
1. Clique em **[!UICONTROL Gerenciar atribuições]**, depois **[!UICONTROL Adicionar atribuições]**.
1. Selecione os usuários para o conjunto de permissões e clique em **[!UICONTROL Atribuir]**.

   ![](assets/1-5.png)

## [!DNL Marketo Measure] Explicação dos conjuntos de permissões {#marketo-measure-permission-sets-explained}

<table> 
 <tbody> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Administrador</strong></span></td> 
   <td><span>Oferece ao administrador do SFDC a capacidade de criar, ler, gravar e excluir registros do [!DNL Marketo Measure] objetos. A licença ao abrigo da qual [!DNL Marketo Measure] Os dados de envio para o SFDC devem ter esse conjunto de permissões ativado. Além disso, é recomendável que esta licença tenha a capacidade de editar clientes em potencial convertidos nos cenários em que o cliente potencial é convertido antes de [!DNL Marketo Measure] aplicação de dados ao registro. Isso garante a precisão nos relatórios entre o Salesforce e o [!DNL Marketo Measure]. <a href="https://help.salesforce.com/articleView?id=release-notes.rn_sales_leads_view_converted.htm&amp;type=5&amp;release=206&amp;language=en_us">Leia mais aqui</a>.</span></td> 
  </tr> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Usuário de campanha de marketing</strong></span></td> 
   <td><span>Oferece ao usuário de marketing a capacidade de ler e gravar registros de [!DNL Marketo Measure] objetos. Todos os membros da equipe de marketing devem ter a [!DNL Marketo Measure] Ativação do conjunto de permissões do Usuário de marketing. <br></span></td> 
  </tr> 
  <tr> 
   <td><span><strong>[!DNL Marketo Measure] Usuário padrão</strong></span></td> 
   <td><span>Oferece ao usuário a capacidade de ler registros de [!DNL Marketo Measure] objetos.</span></td> 
  </tr> 
 </tbody> 
</table>

As equipes de desenvolvimento de vendas de entrada e os executivos de conta podem se beneficiar do [!DNL Marketo Measure] dados. Se essas funções quiserem usar [!DNL Marketo Measure] em relatórios, habilite a opção [!DNL Marketo Measure] Conjunto de permissões Usuário padrão.

>[!NOTE]
>
>Além disso, o usuário ao qual estamos conectados deve ter o &quot;Usuário de marketing&quot; [!DNL Salesforce] Perfil ativado no nível do usuário para que acessemos o objeto do Campaign. Para verificar isso, clique em em **[!UICONTROL Configuração]** > **[!UICONTROL Gerenciar usuários]** > **[!UICONTROL Perfis]** > **[!UICONTROL Usuário de marketing]** > **Usuários atribuídos**.
