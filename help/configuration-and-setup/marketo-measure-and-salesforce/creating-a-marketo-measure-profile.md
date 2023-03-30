---
unique-page-id: 18874698
description: Criação de um [!DNL Marketo Measure] Perfil - [!DNL Marketo Measure] - Documentação do produto
title: Criação de um [!DNL Marketo Measure] perfil
exl-id: dab2e2cb-fbd3-464a-9bd7-e9bf153d9848
source-git-commit: 51397a02872035fef41d308c1f855bcaecc29c4e
workflow-type: tm+mt
source-wordcount: '191'
ht-degree: 20%

---

# Criação de um[!DNL Marketo Measure]perfil {#creating-a-marketo-measure-profile}

Saiba como criar um [!DNL Marketo Measure] perfil. Criação de um [!DNL Marketo Measure] O perfil garante que não teremos erros de validação ao enviar dados para o seu CRM.

1. Crie um [!DNL Marketo Measure] perfil:

   * Atribua o [!DNL Marketo Measure] Conjunto de permissões do administrador
   * Ative a permissão para Exibir e editar leads convertidos

   >[!NOTE]
   >
   >Esse perfil pode ser um clone de um [!DNL System Admin] perfil

1. Criou um [!DNL Marketo Measure] usuário:

   * Atribua o novo perfil do [!DNL Marketo Measure] a esse usuário
   * Habilite “Usuário de marketing” como uma permissão de nível de usuário

1. Exclua este Perfil de todos os acionadores, fluxos de trabalho e processos.
1. Faça logon no [!DNL Marketo Measure] Conta e reautorize a [!DNL Salesforce] conexão com o novo usuário:

   * Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e fazer logon com as novas credenciais do Salesforce de produção do usuário
   * Selecione &quot;[!UICONTROL Configurações]&quot; dentro do &quot;[!UICONTROL Minha conta]&quot; menu suspenso
   * Selecione &quot;[!UICONTROL Conexões]&quot; dentro do &quot;[!UICONTROL Integrações]&quot; agrupamento
   * Clique no ícone Chave à direita da conexão do [!DNL Salesforce] atual e selecione Reautorizar novamente com a produção. Em seguida, faça logon com as novas credenciais do usuário novamente, se solicitado

   Feito!

   Se tiver dúvidas sobre a criação de um [!DNL Marketo Measure] entre em contato com a Equipe de conta do Adobe (seu Gerente de conta) ou [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
