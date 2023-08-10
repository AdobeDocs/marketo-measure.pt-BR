---
unique-page-id: 18874580
description: Conectar o Marketo Measure ao Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Conectar o Marketo Measure ao Salesforce
exl-id: 9be8d3fa-1045-4e41-bc2e-5b9d4d3513ae
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '281'
ht-degree: 0%

---

# Conectar o Marketo Measure ao Salesforce {#connect-marketo-measure-to-salesforce}

Este artigo fornece uma visão geral de como conectar seus [!DNL Salesforce] para a sua conta [!DNL Marketo Measure] conta.

## Conectando [!DNL Marketo Measure] com [!DNL Salesforce] {#connecting-marketo-measure-with-salesforce}

1. Use um navegador incógnito para fazer logon no [!DNL Marketo Measure].

1. Na barra de menus na parte superior da tela, navegue até **[!UICONTROL Minha conta]** e clique no link [!UICONTROL Configurações] opção.

1. Na coluna de opções de configuração à esquerda, clique em [!UICONTROL Conexões] localizado abaixo de [!UICONTROL Integrações] seção.

   ![](assets/1.png)

1. Na seção CRM, em Conexões, clique em **[!UICONTROL Configurar Nova Conexão do CRM]**.

   ![](assets/2.png)

1. Uma janela pop-up será exibida solicitando que você selecione a conexão CRM. Clique em [!UICONTROL Conectar] ao lado do botão [!DNL Salesforce] logotipo.

   ![](assets/3.png)

1. Uma janela pop-up final será exibida, solicitando os [!DNL Salesforce] credenciais, sandbox ou produção. Insira suas informações e clique em **[!UICONTROL Autorizar]** para conectar a conta ao [!DNL Marketo Measure].

>[!NOTE]
>
>[!DNL Marketo Measure] só pode ser conectado a um [!DNL Salesforce] instância de cada vez.
>
>* A [!DNL Marketo Measure] A instância do pode ser conectada a uma instância de sandbox do SFDC para testar a integração antes de alternar a conexão com sua instância de produção do SFDC.
>* Se você testar primeiro com uma sandbox da SFDC, recomendamos testar com uma que seja uma réplica exata da instância de produção da SFDC em termos de campos nos objetos lead, contact, account, Opportunity, Campaign e case. Se você tiver acionadores APEX ativos na produção que são acionados em atualizações dos objetos Lead, Contact, Account, Opportunity, Campaign e Case, tente ativá-los em sua sandbox.
>* Depois de concluir os testes, você atualizará [!DNL Marketo Measure] conta para apontar para sua Produção [!DNL Salesforce] (em vez de Sandbox [!DNL Salesforce]). Devido à forma como a integração foi criada, uma vez que um [!DNL Marketo Measure] A conta do está conectada à Produção [!DNL Salesforce], não é possível &quot;retroceder&quot; e conectar-se a uma sandbox [!DNL Salesforce] org.

