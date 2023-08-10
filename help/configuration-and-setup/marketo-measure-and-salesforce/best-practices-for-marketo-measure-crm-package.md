---
description: Práticas recomendadas do [!DNL Marketo Measure] Pacote do CRM - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para [!DNL Marketo Measure] Pacote do CRM
exl-id: 97ce0ff3-8aa5-4789-9ee0-25d68c001def
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '425'
ht-degree: 6%

---

# Práticas recomendadas para[!DNL Marketo Measure]Pacote do CRM {#best-practices-for-marketo-measure-crm-package}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

## Visão geral {#overview}

[!DNL Marketo Measure] integra-se a ambos [!DNL Salesforce] e [!DNL Microsoft Dynamics], este documento se concentrará no [!DNL Marketo Measure] práticas recomendadas para os pacotes de CRM criados para [!DNL Salesforce].

Durante a implementação, os dois pacotes a seguir seriam instalados no [!DNL Salesforce] instância.

Pacote básico: este é nosso pacote básico que inclui nossos objetos e campos personalizados. Recomendamos instalar na Produção para todos os usuários.
Pacote de extensão do painel: este é nosso Pacote de extensão do painel, que contém 3 painéis pré-criados. Recomendamos instalar na Produção para todos os usuários. Isso é opcional, mas recomendamos que os clientes o instalem.

Esses pacotes ativam o [!DNL Marketo Measure] usuários para acessar facilmente os dados do ponto de contato em todo o seu [!DNL Salesforce] instância. Confirmar se você tem esses pacotes configurados corretamente será fundamental para verificar se os layouts de página, conjuntos de permissões e relatórios e painéis estão sendo apresentados ao seu [!DNL Marketo Measure] usuários conforme esperado.

## Prática recomendada {#best-practice}

Quando se trata de implementar e gerenciar seus [!DNL Marketo Measure] [!DNL Salesforce] Pacote, lembre-se das seguintes práticas recomendadas.

* Confirme se todos os membros da equipe necessários têm acesso à [!DNL Marketo Measure] pastas de relatório. Deve haver de 1 a 3 [!DNL Marketo Measure] pastas (elas são explicadas abaixo). Para abrir o acesso, a pessoa que instalou o(s) pacote(s) precisa compartilhar as pastas do relatório com os usuários ou funções apropriados.
   * **Relatórios de Touchpoint do comprador** - disponível para todos
   * **[!DNL Marketo Measure]Relatórios de marketing baseados em conta** - os relatórios serão preenchidos somente para clientes de Nível 2 e superior
   * **Painéis de Pontos de Contato do Comprador** - disponível para todos, embora esse pacote seja opcional.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora a configuração do seu pacote de CRM seja abordada durante a implementação inicial, recomendamos que você revise a configuração do seu pacote de CRM uma vez por ano. Essa revisão confirmará se todos os layouts de página estão configurados corretamente e se todos os membros apropriados da equipe têm acesso a [!DNL Marketo Measure] relatórios e painéis.

Outros motivos para isso podem acionar uma revisão...

* Adição de novos membros da equipe
* Atualizações para você [!DNL Salesforce] layouts de página
* Migração para [!DNL Salesforce] Clássico a Iluminação
* Atualizações para o seu [!DNL Marketo Measure] contrato
* Verifique se você tem a versão mais recente do pacote de pontos de contato do comprador instalada no [!DNL Salesforce]

>[!NOTE]
>
>Quando você desativa a exportação de dados do Marketo Measure para o Salesforce, os dados existentes não são removidos. Para removê-lo, siga as etapas em [este artigo de ajuda do Salesforce](https://help.salesforce.com/s/articleView?id=sf.c360_a_delete_data_stream_records.htm&amp;type=5){target="_blank"}.

>[!MORELIKETHIS]
>
>* [Atualizar Pacote de Touchpoint do Comprador](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md)
>* [[!DNL Marketo Measure] Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)
>* [Pasta de relatórios e painéis de compartilhamento](https://help.salesforce.com/articleView?id=analytics_share_folder.htm&amp;type=0)
>* [Conectar o Marketo Measure ao Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/connect-marketo-measure-to-salesforce.md)
