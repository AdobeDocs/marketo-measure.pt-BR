---
description: Práticas recomendadas para [!DNL Marketo Measure] Pacote CRM - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para [!DNL Marketo Measure] Pacote CRM
exl-id: 97ce0ff3-8aa5-4789-9ee0-25d68c001def
source-git-commit: 00268f49ff6e5dfc105fa7ea21837375eae49647
workflow-type: tm+mt
source-wordcount: '427'
ht-degree: 0%

---

# Práticas recomendadas para [!DNL Marketo Measure] Pacote CRM {#best-practices-for-marketo-measure-crm-package}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

## Visão geral {#overview}

[!DNL Marketo Measure] integra-se a [!DNL Salesforce] e [!DNL Microsoft Dynamics], este documento se concentrará no [!DNL Marketo Measure] práticas recomendadas para pacotes CRM projetados para [!DNL Salesforce].

Durante a implementação, os dois pacotes a seguir teriam sido instalados no [!DNL Salesforce] instância.

Pacote básico: Este é nosso pacote base que inclui nossos objetos e campos personalizados. Recomendamos instalar dentro de Produção para todos os usuários.
Pacote de extensão do painel: Este é nosso Pacote de extensão do painel, que contém 3 painéis pré-criados. Recomendamos instalar dentro de Produção para todos os usuários. Isso é opcional, mas incentivamos os clientes a instalar o.

Esses pacotes permitem que seus [!DNL Marketo Measure] para acessar facilmente os dados do ponto de contato em todos os [!DNL Salesforce] instância. Confirmar se esses pacotes estão configurados corretamente será fundamental para verificar se os layouts das páginas, os conjuntos de permissões e os relatórios e painéis estão sendo apresentados ao seu [!DNL Marketo Measure] como esperado.

## Prática recomendada {#best-practice}

Quando se trata de implementar e gerenciar seu [!DNL Marketo Measure] [!DNL Salesforce] Considere as práticas recomendadas a seguir.

* Confirme se todos os membros da equipe necessários têm acesso ao [!DNL Marketo Measure] pastas de relatório. Deve haver 1-3 [!DNL Marketo Measure] pastas (elas são explicadas abaixo). Para abrir o acesso, a pessoa que instalou o(s) pacote(s) precisa compartilhar as pastas do relatório com os usuários ou funções apropriados.
   * **Relatórios de ponto de contato do comprador** - disponível para todos
   * **[!DNL Marketo Measure]Relatórios de marketing baseados em conta** - os relatórios serão preenchidos apenas com os clientes de nível 2 e superior
   * **Painéis de ponto de contato do comprador** - disponível para todos, embora este pacote seja opcional.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora a configuração do seu Pacote de CRM seja abordada durante a implementação inicial, recomendamos que você revise a configuração do seu pacote de CRM uma vez por ano. Essa revisão confirmará que todos os layouts de página estão configurados corretamente e que todos os membros da equipe apropriados têm acesso ao [!DNL Marketo Measure] relatórios e painéis.

Outras razões para isso podem desencadear uma revisão...

* Adição de novos membros da equipe
* Atualizações para você [!DNL Salesforce] layouts de página
* Migração para [!DNL Salesforce] Clássico para iluminar
* Atualizações para seu [!DNL Marketo Measure] contrato
* Verifique se a versão mais recente do nosso Pacote de Pontos de Contato do Comprador está instalada em [!DNL Salesforce]

>[!NOTE]
>
>Quando você desativa a Medição de Marketo exportando dados para o Salesforce, os dados existentes não são removidos. Para removê-lo, siga as etapas em [este artigo de ajuda do Salesforce](https://help.salesforce.com/s/articleView?id=sf.c360_a_delete_data_stream_records.htm&amp;type=5){target=&quot;_blank&quot;}.

>[!MORELIKETHIS]
>
>* [Atualizar Pacote do Ponto de Contato do Comprador](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md)
>* [[!DNL Marketo Measure] Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)
>* [Compartilhamento de relatórios e pastas de painéis](https://help.salesforce.com/articleView?id=analytics_share_folder.htm&amp;type=0)
>* [Conexão da medida do Marketo ao Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/connect-marketo-measure-to-salesforce.md)

