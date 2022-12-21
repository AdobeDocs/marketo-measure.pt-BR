---
description: Acesso ao Data Warehouse - Compartilhamento direto - Documentação do produto
title: Acesso à Data Warehouse - Compartilhamento direto
exl-id: 940c3316-5f94-4aa2-a656-aec5eb7b7450
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '262'
ht-degree: 0%

---

# Acesso à Data Warehouse - Compartilhamento direto {#data-warehouse-access-direct-share}

**Requisitos**

Para [!DNL Marketo Measure] para configurar um compartilhamento direto no data warehouse, você deve atender aos seguintes requisitos.

* Você tem sua própria instância do Snowflake.
* Sua instância do Snowflake está localizada na região Snowflake do Azure East US 2.
* Você fornece [!DNL Marketo Measure] com sua ID de conta do Snowflake.

**Limitações**

[!DNL Marketo Measure] O só poderá configurar Compartilhamentos Snowflake Direct com contas localizadas no Azure East US 2 devido às limitações atuais do Compartilhamento Snowflake Direct. Se você precisar que seus dados sejam disponibilizados em outras regiões do Snowflake, recomendamos fazer uma cópia dos dados em uma conta do Snowflake localizada no Azure East US 2 e aproveitar o [Replicação de Banco de Dados Snowflake](https://docs.snowflake.com/en/user-guide/database-replication-intro.html)Recurso {target=&quot;_blank&quot;} para copiar seus dados na região/conta do Snowflake de sua escolha.

**Acessar o compartilhamento**

Depois que o compartilhamento tiver sido criado para a ID de conta fornecida, você deverá concluir a [etapas de configuração](https://docs.snowflake.com/en/user-guide/data-share-consumers.html){target=&quot;_blank&quot;} na instância do Snowflake para acessar os dados.

>[!NOTE]
>
>Você pode escolher qualquer nome de banco de dados que desejar. Você pode atribuir os privilégios a qualquer regra escolhida, desde que exista em sua instância do Snowflake.

* Usar a função de administrador da conta

```
USE ROLE ACCOUNTADMIN
```

* Exibir compartilhamentos disponíveis (mostrará o nome da ação concedida)

```
SHOW SHARES
```

* Criar um banco de dados para o compartilhamento

```
CREATE DATABASE <database_name> FROM SHARE <provider_account>.<share_name>
```

* Conceder privilégios no banco de dados compartilhado

```
GRANT IMPORTED PRIVILEGES ON DATABASE <database_name> TO ROLE <role_name>
GRANT IMPORTED PRIVILEGES ON ALL SCHEMAS IN DATABASE <database_name> TO ROLE <role_name>
```

Para obter instruções e etapas mais detalhadas para executar essas etapas na interface do usuário do Snowflake, consulte [Snowflake diretamente](https://docs.snowflake.com/en/user-guide/data-share-consumers.html){target=&quot;_blank&quot;}.
