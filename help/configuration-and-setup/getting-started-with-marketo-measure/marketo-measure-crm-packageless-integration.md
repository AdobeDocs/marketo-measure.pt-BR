---
unique-page-id: 37356027
description: "[!DNL Marketo Measure] Integração sem pacote do CRM - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Integração sem pacotes do CRM"
exl-id: a4f31d82-63ec-4bb2-bc8b-d3495e61af4f
feature: Integration
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '313'
ht-degree: 1%

---

# [!DNL Marketo Measure] Integração sem pacotes do CRM {#marketo-measure-crm-packageless-integration}

Nem todas as equipes de marketing querem (ou têm acesso) executar relatórios de marketing fora do CRM, seja por causa de acesso limitado, propriedade de CRM, tempo de implantação mais longo ou implicações legais. Descendo pelo caminho de [!DNL Marketo Measure] O Quick Start oferece a capacidade de implementar e executar com eficiência [!DNL Marketo Measure] com o mínimo de confiança no CRM possível.

## Padrão [!DNL Marketo Measure] Instalação {#standard-marketo-measure-installation}

Através do padrão [!DNL Marketo Measure] instalação, é necessário instalar um [!DNL Salesforce] Pacote ou um [!DNL Microsoft Dynamics] Solução gerenciada. A instalação inclui objetos/entidades personalizados e campos personalizados adicionados ao CRM [!DNL Marketo Measure] O pode então gravar dados no.

Uma integração sem pacotes com o [!DNL Marketo Measure] é para clientes que não desejam criar objetos/entidades personalizados ou campos personalizados no seu CRM. Também é uma boa opção para clientes que estão usando uma Data Warehouse externa.

## Permissões {#permissions}

A [!DNL Marketo Measure] A integração sem pacotes do CRM ainda requer acesso a objetos CRM padrão, como Clientes potenciais e Contatos. Recomenda-se que um usuário dedicado atue como o usuário conectado, pois ele tem os privilégios de acesso a dados adequados.

Para garantir que todos os dados sejam recebidos corretamente do seu CRM, são necessárias as seguintes configurações de segurança e acessibilidade: Exibir todos os dados para o Perfil do usuário dedicado. Esse conjunto de permissões oferece [!DNL Marketo Measure] o acesso necessário para baixar dados de objetos padrão. Este conjunto de permissões está no nível do perfil.

## Configurar o provedor de identidade e as conexões de dados {#setup-your-identity-provider-and-data-connections}

Nos guias abaixo, ignore as etapas para instalar o [!DNL Salesforce] pacote ou [!DNL Microsoft Dynamics] Solução gerenciada e siga apenas as permissões e as instruções de integração.

[!DNL Salesforce] cliques de clientes [aqui](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md).

[!DNL Microsoft Dynamics] cliques de clientes [aqui](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md).

Depois de concluir as etapas acima, você está pronto para prosseguir. Se você tiver problemas ao longo do caminho, não hesite em entrar em contato com o seu [!DNL Marketo Measure] representante ou [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

>[!NOTE]
>
>Se você começar com o [!DNL Marketo Measure] Integração sem pacotes do CRM, você pode instalar o pacote Salesforce ou a Solução gerenciada do Microsoft Dynamics posteriormente.
