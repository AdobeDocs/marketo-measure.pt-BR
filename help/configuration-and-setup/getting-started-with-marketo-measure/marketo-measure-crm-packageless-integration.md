---
unique-page-id: 37356027
description: '[!DNL Marketo Measure] Integração sem Pacotes do CRM - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Integração sem pacotes do CRM'
exl-id: a4f31d82-63ec-4bb2-bc8b-d3495e61af4f
feature: Integration
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '305'
ht-degree: 2%

---

# [!DNL Marketo Measure] Integração sem pacotes do CRM {#marketo-measure-crm-packageless-integration}

Nem todas as equipes de marketing querem (ou têm acesso) executar relatórios de marketing fora do CRM, seja por causa de acesso limitado, propriedade de CRM, tempo de implantação mais longo ou implicações legais. Seguir o caminho do [!DNL Marketo Measure] Quick Start oferece a capacidade de implementar e executar efetivamente o [!DNL Marketo Measure] com o mínimo de confiança no CRM possível.

## Instalação padrão de [!DNL Marketo Measure] {#standard-marketo-measure-installation}

Por meio da instalação padrão do [!DNL Marketo Measure], é necessário instalar um Pacote do [!DNL Salesforce] ou uma Solução Gerenciada do [!DNL Microsoft Dynamics]. A instalação inclui objetos/entidades personalizados e campos personalizados que são adicionados ao CRM e nos quais [!DNL Marketo Measure] pode gravar dados.

Uma integração sem pacotes com o [!DNL Marketo Measure] é para clientes que não desejam criar objetos/entidades personalizados ou campos personalizados em seu CRM. Também é uma boa opção para clientes que estão usando uma Data Warehouse externa.

## Permissões {#permissions}

Uma integração sem pacotes do CRM [!DNL Marketo Measure] ainda requer acesso a objetos do CRM padrão, como Clientes Potenciais e Contatos. Recomenda-se que um usuário dedicado atue como o usuário conectado, pois ele tem os privilégios de acesso a dados adequados.

Para garantir que todos os dados sejam recebidos corretamente do seu CRM, são necessárias as seguintes configurações de segurança e acessibilidade: Exibir todos os dados para o Perfil do usuário dedicado. Este conjunto de permissões dá a [!DNL Marketo Measure] o acesso necessário para baixar dados de objetos padrão. Este conjunto de permissões está no nível do perfil.

## Configurar o provedor de identidade e as conexões de dados {#setup-your-identity-provider-and-data-connections}

Nos guias abaixo, ignore as etapas para instalar o pacote [!DNL Salesforce] ou a Solução Gerenciada [!DNL Microsoft Dynamics] e siga apenas as permissões e instruções de integração.

[!DNL Salesforce] clientes clicam [aqui](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md).

[!DNL Microsoft Dynamics] clientes clicam [aqui](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md).

Após concluir essas etapas, a integração deve estar operacional. Se tiver algum problema, contate o representante do [!DNL Marketo Measure] ou o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

>[!NOTE]
>
>Se você começar com a integração sem pacotes do [!DNL Marketo Measure] CRM, poderá instalar o pacote do Salesforce ou a Solução Gerenciada da Microsoft Dynamics mais tarde.
