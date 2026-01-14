---
description: Saiba mais sobre os requisitos e as etapas para habilitar o acesso compartilhado direto ao data warehouse do Marketo Measure no Snowflake
title: Acesso ao Data Warehouse - Compartilhamento direto
exl-id: 940c3316-5f94-4aa2-a656-aec5eb7b7450
feature: Data Warehouse
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '300'
ht-degree: 4%

---

# Acesso ao Data Warehouse - Compartilhamento direto {#data-warehouse-access-direct-share}

## Requisitos {#requirements}

Para que [!DNL Marketo Measure] configure um compartilhamento direto para o data warehouse, você deve atender aos seguintes requisitos.

* Você tem sua própria instância do Snowflake.
* Sua instância do Snowflake está na região do Snowflake do Azure East US 2.
* Você fornece a [!DNL Marketo Measure] sua ID de conta da Snowflake.

## Limitações {#limitations}

O [!DNL Marketo Measure] só poderá configurar Compartilhamentos Diretos da Snowflake com contas localizadas no Azure East US 2 devido às limitações atuais do Compartilhamento Direto da Snowflake. Se você precisar que seus dados sejam disponibilizados em outras regiões do Snowflake, recomendamos fazer uma cópia dos dados em uma conta do Snowflake localizada no Azure East US 2 e usar o recurso [Replicação de Banco de Dados do Snowflake](https://docs.snowflake.com/en/user-guide/database-replication-intro.html){target="_blank"} para copiar seus dados na região/conta do Snowflake de sua escolha.

## Inserir ID da conta da Snowflake {#enter-snowflake-account-id}

Abra a seção **Configurações** no aplicativo Marketo Measure e navegue até a página **Data Warehouse**. Na seção **Compartilhamento Direto**, digite sua [ID da conta da Snowflake](https://docs.snowflake.com/en/user-guide/admin-account-identifier.html){target="_blank"} na caixa fornecida e clique em **Conectar**.

![Abra a seção Configurações no aplicativo Marketo Measure e navegue até ](assets/data-share-1.png)

## Acesso ao compartilhamento {#accessing-the-share}

Depois que o compartilhamento for criado para a ID de conta fornecida, você deverá concluir as [etapas de configuração](https://docs.snowflake.com/en/user-guide/data-share-consumers.html){target="_blank"} na sua instância do Snowflake para acessar os dados.

>[!NOTE]
>
>Você pode escolher qualquer nome de banco de dados desejado. Você pode designar os privilégios a qualquer atribuição escolhida, desde que ela exista na sua instância do Snowflake.

* Usar a função de administrador da conta

```sql
USE ROLE ACCOUNTADMIN
```

* Exibir compartilhamentos disponíveis (mostra o nome do compartilhamento concedido)

```sql
SHOW SHARES
```

* Criar um banco de dados para o compartilhamento

```sql
CREATE DATABASE <database_name> FROM SHARE <provider_account>.<share_name>
```

* Conceder privilégios no banco de dados compartilhado

```sql
GRANT IMPORTED PRIVILEGES ON DATABASE <database_name> TO ROLE <role_name>
GRANT IMPORTED PRIVILEGES ON ALL SCHEMAS IN DATABASE <database_name> TO ROLE <role_name>
```

Para obter instruções mais detalhadas e as etapas para realizar essas etapas na interface do usuário do Snowflake, consulte a [documentação da Snowflake diretamente](https://docs.snowflake.com/en/user-guide/data-share-consumers.html){target="_blank"}.
