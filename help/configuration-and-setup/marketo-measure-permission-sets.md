---
description: '[!DNL Marketo Measure] Conjuntos de permissões - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Conjuntos de permissões'
exl-id: 84b7aa24-3934-4584-af05-02e804d00a98
feature: Salesforce
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '271'
ht-degree: 4%

---

# [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets}

Saiba como acessar e atribuir Conjuntos de permissões do [!DNL Marketo Measure] no Salesforce.

## [!DNL Marketo Measure] Conjuntos de permissões {#marketo-measure-permission-sets-1}

Três conjuntos de permissões estão incluídos com o pacote do Salesforce [!DNL Marketo Measure]. Esses conjuntos de permissões fornecem acesso a [!DNL Marketo Measure] para administradores, profissionais de marketing e usuários padrão.

Para acessar e atribuir conjuntos de permissões no Salesforce:

1. Clique em **[!UICONTROL Instalação]**.
1. Na margem esquerda, clique em **[!UICONTROL Usuários]** e depois em **[!UICONTROL Conjuntos de Permissões]**.
1. Selecione o Conjunto de Permissões [!DNL Marketo Measure] que você deseja atribuir.
1. Clique em **[!UICONTROL Gerenciar atribuições]** e depois em **[!UICONTROL Adicionar atribuições]**.
1. Selecione os usuários para o conjunto de permissões e clique em **[!UICONTROL Atribuir]**.

   ![1. Selecione os usuários para o conjunto de permissões e clique em Atribuir.](assets/bizible-full-1.png)

## [!DNL Marketo Measure] Conjuntos De Permissões Explicados {#marketo-measure-permission-sets-explained}

<table>
 <tbody>
  <tr>
   <td><span><strong>[!DNL Marketo Measure] Administrador</strong></span></td>
   <td><span>Oferece ao administrador do SFDC a capacidade de criar, ler, gravar e excluir registros de [!DNL Marketo Measure] objetos. A licença sob a qual [!DNL Marketo Measure] envia dados para o SFDC deve ter esse conjunto de permissões habilitado. Além disso, é recomendável que esta licença tenha a capacidade de editar clientes em potencial convertidos nos cenários em que o cliente em potencial é convertido antes de [!DNL Marketo Measure] aplicar os dados ao registro. Isso garante a precisão nos relatórios entre o Salesforce e o [!DNL Marketo Measure]. <a href="https://help.salesforce.com/articleView?id=release-notes.rn_sales_leads_view_converted.htm&type=5&release=206&language=en_us">Leia mais aqui</a>.</span></td>
  </tr>
  <tr>
   <td><span><strong>[!DNL Marketo Measure] Usuário de campanha de marketing</strong></span></td>
   <td><span>Oferece ao usuário de marketing a capacidade de ler e gravar registros de [!DNL Marketo Measure] objetos. Todos os membros da equipe de marketing devem ter o conjunto de permissões de Usuário de marketing [!DNL Marketo Measure] habilitado. <br></span></td>
  </tr>
  <tr>
   <td><span><strong>[!DNL Marketo Measure] Usuário padrão</strong></span></td>
   <td><span>Fornece ao usuário a capacidade de ler registros de [!DNL Marketo Measure] objetos.</span></td>
  </tr>
 </tbody>
</table>

Equipes de desenvolvimento de vendas de entrada e executivos de conta podem se beneficiar dos dados de [!DNL Marketo Measure]. Se essas funções quiserem usar dados de [!DNL Marketo Measure] em relatórios, habilite o conjunto de permissões Usuário Padrão [!DNL Marketo Measure].

>[!NOTE]
>
>Além disso, o usuário ao qual estamos conectados deve ter o Perfil &quot;Usuário de marketing&quot; [!DNL Salesforce] ativado no nível do usuário para que possamos acessar o objeto do Campaign. Para verificar isso, clique em **[!UICONTROL Configuração]** > **[!UICONTROL Gerenciar usuários]** > **[!UICONTROL Perfis]** > **[!UICONTROL Usuário de marketing]** > **Usuários atribuídos**.
