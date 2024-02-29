---
unique-page-id: 18874698
description: Criação de um [!DNL Marketo Measure] Perfil - [!DNL Marketo Measure]
title: Criação de um [!DNL Marketo Measure] perfil
exl-id: dab2e2cb-fbd3-464a-9bd7-e9bf153d9848
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '181'
ht-degree: 3%

---

# Criação de um [!DNL Marketo Measure] Perfil {#creating-a-marketo-measure-profile}

Saiba como criar um [!DNL Marketo Measure] perfil. Criação de um [!DNL Marketo Measure] garante que não encontraremos erros de validação ao enviar dados para o seu CRM.

1. Criar um [!DNL Marketo Measure] perfil:

   * Atribua a [!DNL Marketo Measure] Conjunto de permissões do administrador
   * Ativar a permissão para Exibir e Editar Clientes Potenciais Convertidos

   >[!NOTE]
   >
   >Este perfil pode ser um clone de um [!DNL System Admin] perfil

1. Criou um dedicado [!DNL Marketo Measure] usuário:

   * Atribuir o novo [!DNL Marketo Measure] Criar perfil para esse usuário
   * Ativar &quot;Usuário de marketing&quot; como permissão no nível do usuário

1. Excluir este perfil de todos os acionadores, fluxos de trabalho e processos.
1. Faça logon no [!DNL Marketo Measure] Conta e reautorize o [!DNL Salesforce] conexão com o novo usuário:

   * Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon com as novas credenciais de produção do Salesforce do usuário
   * Selecionar &quot;[!UICONTROL Configurações]&quot; dentro do &quot;[!UICONTROL Minha conta]&quot; suspenso
   * Selecionar &quot;[!UICONTROL Conexões]&quot; dentro do &quot;[!UICONTROL Integrações]Agrupamento &quot;
   * Clique no ícone Chave à direita do painel conectado no momento [!DNL Salesforce] e selecione Reautorizar com produção. Em seguida, faça logon com as novas credenciais do usuário novamente, se solicitado

   Pronto!

   Em caso de dúvidas sobre a criação de uma [!DNL Marketo Measure] perfil, entre em contato com a Equipe de contas do Adobe (seu Gerente de conta) ou [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
