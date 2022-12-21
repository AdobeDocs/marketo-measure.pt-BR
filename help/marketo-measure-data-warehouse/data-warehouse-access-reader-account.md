---
description: Acesso ao Data Warehouse - Conta do Reader - Documentação do produto
title: Acesso ao Data Warehouse - Conta do Reader
exl-id: 2aa73c41-47ab-4f11-96d8-dafb642308fc
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '496'
ht-degree: 0%

---

# Acesso ao Data Warehouse - Conta do Reader {#data-warehouse-access-reader-account}

## Link de acesso ao Snowflake {#snowflake-access-link}

Para acessar o data warehouse do Snowflake, você precisará navegar até o URL específico da sua conta do Snowflake. Você pode encontrar este link de acesso fazendo logon em [!DNL Marketo Measure] e siga as etapas abaixo para navegar até a página de informações da Data Warehouse.

1. Em [!DNL Marketo Measure], na parte superior da página, clique em **[!UICONTROL Minha conta]** > **[!UICONTROL Configurações]**.

   ![](assets/data-warehouse-access-reader-account-1.png)

1. No menu do lado esquerdo, em Segurança, clique em **[!UICONTROL Data Warehouse]**.

   ![](assets/data-warehouse-access-reader-account-2.png)

1. Nesta página, você encontrará o link para seu data warehouse do Snowflake e seu nome de usuário.

   ![](assets/data-warehouse-access-reader-account-3.png)

   >[!NOTE]
   >
   >Esta é uma conta somente leitura disponível para sua organização, não apenas para um usuário individual. Qualquer usuário da organização que tenha acesso a [!DNL Marketo Measure] Você pode usar essa conta para fazer logon na conta do leitor de Datas Warehouse do Snowflake.

1. Clique no link fornecido no URL do Snowflake, isso o levará à página de login do Snowflake, onde você inserirá seu nome de usuário e senha. _Se não tiver a senha, consulte as etapas abaixo para redefini-la_.

   ![](assets/data-warehouse-access-reader-account-4.png)

1. Depois de conectado, clique em **[!UICONTROL Planilhas]** na parte superior da página.

   ![](assets/data-warehouse-access-reader-account-5.png)

1. Os objetos de banco de dados BIZIBLE_ROI_V3 estão no lado esquerdo da tela. Insira o Warehouse, o Banco de Dados e o Schema nas opções suspensas na parte superior da janela de query. Só deve haver uma opção para cada. Agora você está pronto para executar consultas dentro do editor de consultas do Snowflake.

   ![](assets/data-warehouse-access-reader-account-6.png)

## Redefinir sua senha {#reset-your-password}

[!DNL Marketo Measure] não tem acesso à sua senha de login do Snowflake. Se precisar redefinir a senha, clique no botão [!UICONTROL Redefinir senha] na página Informações da Data Warehouse e siga as instruções. Uma senha temporária será exibida imediatamente na interface do usuário do . Você será solicitado a criar sua própria senha no próximo logon do data warehouse.

>[!NOTE]
>
>* Redefinir a senha a redefine para todos [!DNL Marketo Measure] usuários em sua organização, não apenas o usuário que está conectado no momento.
>* Mostramos apenas a senha temporária na interface do usuário. Um email não será enviado.


![](assets/data-warehouse-access-reader-account-7.png)

![](assets/data-warehouse-access-reader-account-8.png)

## Conexão com o Snowflake por meio de ferramentas de terceiros {#connecting-to-snowflake-via-third-party-tools}

Você precisará inserir algumas informações para conectar o data warehouse do Snowflake a uma ferramenta de terceiros.

>[!NOTE]
>
>Cada ferramenta tem diferentes requisitos de conexão; recomenda-se consultar a documentação da ferramenta específica que você está tentando conectar.

* **URI** (sempre obrigatório)
   * Este é o nome de domínio da conta Snowflake.  Está contido em uma parte do link de login do Snowflake.
* **Nome do usuário** (sempre obrigatório)
   * O nome de usuário é listado na página de informações da Data Warehouse em [!DNL Marketo Measure].
* **Senha** (sempre obrigatório)
   * Esta é a senha que você define na primeira vez que você faz login em sua conta do Snowflake.  Para redefinir sua senha, consulte as etapas descritas acima.
* **Nome do banco de dados** (nem sempre obrigatório)
   * O banco de dados é o que armazena os dados no Snowflake. É o recurso de armazenamento. O nome do banco de dados é listado na página Informações do Data Warehouse em [!DNL Marketo Measure].
* **Nome do Depósito** (nem sempre obrigatório)
   * O depósito é o que executa consultas no Snowflake. É o recurso de computação.  O nome do depósito é listado na página de informações da Data Warehouse em [!DNL Marketo Measure].
   ![](assets/data-warehouse-access-reader-account-9.png)
