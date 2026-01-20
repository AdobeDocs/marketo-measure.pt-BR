---
unique-page-id: 18874580
description: Conectar o Marketo Measure ao Salesforce - [!DNL Marketo Measure]
title: Conectar o Marketo Measure ao Salesforce
exl-id: 9be8d3fa-1045-4e41-bc2e-5b9d4d3513ae
feature: Salesforce
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '423'
ht-degree: 1%

---

# Conectar o Marketo Measure ao Salesforce {#connect-marketo-measure-to-salesforce}

Este artigo fornece uma visão geral de como conectar a conta do [!DNL Salesforce] à conta do [!DNL Marketo Measure].

## Conectando [!DNL Marketo Measure] com [!DNL Salesforce] {#connecting-marketo-measure-with-salesforce}

1. Use um navegador incógnito para fazer logon no [!DNL Marketo Measure].

1. Na barra de menus na parte superior da tela, navegue até **[!UICONTROL Minha conta]** e clique na opção **[!UICONTROL Configurações]**.

1. Na coluna de opções de configuração à esquerda, clique em **[!UICONTROL Conexões]**, localizada na seção [!UICONTROL Integrações].

   ![](assets/connect-marketo-measure-to-salesforce-1.png)

1. Na seção CRM, em Conexões, clique em **[!UICONTROL Configurar Nova Conexão do CRM]**.

   ![](assets/connect-marketo-measure-to-salesforce-2.png)

1. Uma janela pop-up é exibida solicitando que você selecione a conexão CRM. Clique em **[!UICONTROL Conectar]** ao lado do logotipo [!DNL Salesforce].

   ![](assets/connect-marketo-measure-to-salesforce-3.png)

1. Uma janela pop-up final é exibida, solicitando suas credenciais do [!DNL Salesforce], sandbox ou produção. Insira suas informações e clique em **[!UICONTROL Autorizar]** para conectar a conta a [!DNL Marketo Measure].

>[!NOTE]
>
>[!DNL Marketo Measure] só pode ser conectado a uma instância de [!DNL Salesforce] de cada vez.
>
>* Uma instância [!DNL Marketo Measure] pode ser conectada a uma Instância de sandbox da SFDC para testar a integração antes de alternar a conexão com sua Instância de produção do SFDC.
>* Se você testar primeiro com uma sandbox da SFDC, recomendamos testar com uma que seja uma réplica exata da instância de produção do SFDC em termos de campos nos objetos Lead, Contato, Conta, Oportunidade, Campanha e Caso. Se você tiver acionadores APEX ativos na produção que são acionados em atualizações dos objetos Lead, Contact, Account, Opportunity, Campaign e Case, tente ativá-los em sua sandbox.
>* Após concluir os testes, atualize a conta do [!DNL Marketo Measure] para apontar para a Produção [!DNL Salesforce] (em vez da Sandbox [!DNL Salesforce]). Devido à forma como a integração foi criada, uma vez que a conta do [!DNL Marketo Measure] está conectada à Produção [!DNL Salesforce], você não pode &quot;retroceder&quot; e se conectar a uma organização da Sandbox [!DNL Salesforce].

## Uso de créditos de API {#api-credits-usage}

O Marketo Measure emprega uma tarefa de integração de CRM para fazer a interface com o Salesforce de um cliente por meio de um usuário integrado. Todas as trocas de dados por meio desse usuário usam créditos de API do Salesforce. Você pode alocar uma cota de crédito a um usuário de integração, o que serve para regular chamadas excessivas de API. Essa cota ou limite é redefinido a cada 24 horas.

Você pode acessar esse limite no Marketo Measure via: **Minha Conta** > **Configurações** > **CRM** > **Geral** > **Limite diário de API do CRM** e pode configurá-lo para seus locatários.

![](assets/connect-marketo-measure-to-salesforce-4.png)

### Definição de um limite para créditos de API {#setting-a-limit-for-api-credits}

1. Navegue até **Minha conta** > **Configurações**.

1. Em CRM, clique em **Geral**. Você vê a opção **Limite diário da API do CRM**.

1. Clique no ícone Bloquear para editar.

   ![](assets/connect-marketo-measure-to-salesforce-5.png)

1. Insira um limite desejado igual ou maior que 100.000. Clique em **Salvar** quando terminar.

   ![](assets/connect-marketo-measure-to-salesforce-6.png)

>[!NOTE]
>
>Para aumentar os créditos de API do Salesforce disponíveis para sua solução conectada, entre em contato com o administrador do Salesforce e consulte [este documento do Salesforce](https://developer.salesforce.com/docs/atlas.en-us.salesforce_app_limits_cheatsheet.meta/salesforce_app_limits_cheatsheet/salesforce_app_limits_platform_api.htm){target="_blank"}.

>[!MORELIKETHIS]
>
>[Notificações de erro](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"}
