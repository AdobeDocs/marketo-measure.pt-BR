---
unique-page-id: 37356027
description: "[!DNL Marketo Measure] Integração sem pacotes CRM - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Integração sem pacotes CRM"
exl-id: a4f31d82-63ec-4bb2-bc8b-d3495e61af4f
source-git-commit: 993a326c377b3b6ff48c4e0114b59297f9ca2ca6
workflow-type: tm+mt
source-wordcount: '330'
ht-degree: 0%

---

# [!DNL Marketo Measure] Integração sem pacotes CRM {#marketo-measure-crm-packageless-integration}

Entendemos que nem todas as equipes de marketing desejam (ou têm acesso) executar relatórios de marketing fora do CRM, seja por causa de acesso limitado, propriedade de CRM, tempo de implantação mais longo ou implicações legais. Descer pelo caminho de [!DNL Marketo Measure] O Início rápido oferece a capacidade de implementar e executar com eficiência [!DNL Marketo Measure] com a menor dependência possível do CRM.

## Padrão [!DNL Marketo Measure] Instalação {#standard-marketo-measure-installation}

Por meio do padrão [!DNL Marketo Measure] instalação, é necessário instalar um [!DNL Salesforce] Embalagem ou um [!DNL Microsoft Dynamics] Solução gerenciada. A instalação inclui objetos/entidades personalizados e campos personalizados adicionados ao CRM que [!DNL Marketo Measure] O pode gravar dados no.

Uma integração sem pacotes com [!DNL Marketo Measure] é para clientes que não desejam criar objetos/entidades personalizados ou campos personalizados em seu CRM. Também é uma boa opção para clientes que estão usando um data warehouse externo.

## Permissões {#permissions}

A [!DNL Marketo Measure] A integração sem pacotes CRM ainda requer acesso a objetos CRM padrão, como Leads e Contatos. É altamente recomendável um usuário dedicado servir como o usuário conectado, pois ele terá os privilégios adequados de acesso a dados.

Para garantir que todos os dados sejam retirados corretamente do seu CRM, precisamos das seguintes configurações de segurança e acessibilidade: Exibir todos os dados para o perfil do usuário dedicado. Este conjunto de permissões fornece [!DNL Marketo Measure] o acesso necessário para baixar dados de objetos padrão. Esse conjunto de permissões está no nível do perfil.

## Configurar seu provedor de identidade e conexões de dados {#setup-your-identity-provider-and-data-connections}

Nos guias abaixo, pule as etapas para instalar o [!DNL Salesforce] pacote ou [!DNL Microsoft Dynamics] Solução gerenciada e siga apenas as permissões e instruções de integração.

[!DNL Salesforce] clientes, clique em [here](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md).

[!DNL Microsoft Dynamics] clientes, clique em [here](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md).

Depois de concluir todas as etapas acima, você pode ir. Se tiver problemas durante o caminho, não hesite em contatá-los [!DNL Marketo Measure] representante ou [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target=&quot;_blank&quot;}.

>[!NOTE]
>
>Se você começar com a variável [!DNL Marketo Measure] Integração sem pacotes CRM você poderá instalar o pacote Salesforce ou a Solução gerenciada do Microsoft Dynamics mais tarde.
