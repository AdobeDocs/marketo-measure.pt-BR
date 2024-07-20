---
description: Práticas recomendadas para o  [!DNL Marketo Measure] Pacote de CRM - [!DNL Marketo Measure]
title: Práticas recomendadas para [!DNL Marketo Measure] Pacote do CRM
exl-id: 97ce0ff3-8aa5-4789-9ee0-25d68c001def
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '398'
ht-degree: 7%

---

# Práticas recomendadas para o pacote de CRM [!DNL Marketo Measure] {#best-practices-for-marketo-measure-crm-package}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” em seu CRM. Isso é atualizado e a reformulação da marca será refletida em breve em seu CRM.

## Visão geral {#overview}

[!DNL Marketo Measure] integra-se com [!DNL Salesforce] e [!DNL Microsoft Dynamics], este documento se concentra nas práticas recomendadas do [!DNL Marketo Measure] para os pacotes do CRM criados para [!DNL Salesforce].

Durante a implementação, os dois pacotes a seguir teriam sido instalados na instância [!DNL Salesforce].

Pacote básico: é o pacote básico que inclui objetos e campos personalizados. É recomendável instalar dentro da Produção para todos os usuários.
Pacote de extensão do painel: este é nosso Pacote de extensão do painel, que contém três painéis pré-criados. Recomendamos instalar na produção para todos os usuários. Isso é opcional, mas recomendamos que os clientes o instalem.

Esses pacotes permitem que os usuários do [!DNL Marketo Measure] acessem facilmente os dados do ponto de contato em toda a instância do [!DNL Salesforce]. Confirmar se você tem esses pacotes configurados corretamente é fundamental para verificar se os layouts de página, conjuntos de permissões, relatórios e painéis estão sendo apresentados aos usuários do [!DNL Marketo Measure], conforme esperado.

## Prática recomendada {#best-practice}

Ao implementar e gerenciar o Pacote [!DNL Marketo Measure] [!DNL Salesforce], lembre-se das seguintes práticas recomendadas.

* Confirme se todos os membros da equipe necessários têm acesso às pastas de relatório [!DNL Marketo Measure]. Deve haver de 1 a 3 pastas [!DNL Marketo Measure] (explicadas abaixo). Para abrir o acesso, a pessoa que instalou os pacotes deve compartilhar as pastas de relatório com os usuários ou funções apropriados.
   * **Relatórios do Buyer Touchpoint** - disponível para todos
   * **[!DNL Marketo Measure]Relatórios de marketing baseados em conta** - os relatórios serão preenchidos somente para clientes de Nível 2 e superior
   * **Painéis do Buyer Touchpoint** - disponível para todos, embora este pacote seja opcional.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora a configuração do seu pacote de CRM seja abordada durante a implementação inicial, é recomendável que você revise a configuração do seu pacote de CRM uma vez por ano. Esta revisão confirma que todos os layouts de página estão configurados corretamente e que todos os membros apropriados da equipe têm acesso aos relatórios e painéis do [!DNL Marketo Measure].

Outros motivos para isso podem acionar uma revisão...

* Adição de novos membros da equipe
* Atualizações nos layouts de página do [!DNL Salesforce]
* Migração do [!DNL Salesforce] Classic para Lightweight
* Atualizações do seu contrato do [!DNL Marketo Measure]
* Verifique se você tem a versão mais recente do Pacote de Pontos de Contato do Comprador instalada no [!DNL Salesforce]

>[!NOTE]
>
>Quando você desativa a exportação de dados do Marketo Measure para o Salesforce, os dados existentes não são excluídos. Para removê-lo, siga as etapas em [este artigo de ajuda do Salesforce](https://help.salesforce.com/s/articleView?language=en_US&amp;id=sf.c360_a_delete_data_stream_records.htm&amp;type=5){target="_blank"}.

>[!MORELIKETHIS]
>
>* [Atualizar Pacote Buyer Touchpoint](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md)
>* [[!DNL Marketo Measure] Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)
>* [Pasta de Relatórios e Painéis de Compartilhamento](https://help.salesforce.com/s/articleView?language=pt_BR&amp;id=analytics_share_folder.htm&amp;type=0)
>* [Conectar o Marketo Measure ao Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/connect-marketo-measure-to-salesforce.md)
