---
description: Notas de versão atuais - [!DNL Marketo Measure] - Documentação do produto
title: Notas de versão atuais
source-git-commit: 8e8ddd80d69102455fa678a32f31a9fe8319822c
workflow-type: tm+mt
source-wordcount: '232'
ht-degree: 0%

---

# Notas de versão: 2023 {#release-notes-2023}

Abaixo você encontrará todos os recursos novos e atualizados de nossas versões de 2023.

## Versão do segundo trimestre {#q2-release}

<p>

**Consolidação de Pacotes do Salesforce**

* Estamos mesclando todos os pacotes do Salesforce em um único pacote abrangente para melhorar a experiência do usuário e simplificar o uso. Os pacotes V1, V2_EXT e Reporting serão removidos no próximo trimestre. O novo pacote combina todos os recursos anteriores, permitindo um rastreamento mais eficiente e insights mais profundos do cliente.
* Os clientes que já tiverem o pacote V2 instalado devem atualizá-lo para a nova versão consolidada.
* Adicionamos dois novos campos para aprimorar seus recursos de relatório:
   * form_name: Agora disponível em objetos BT/BAT, esse campo permite que os usuários criem relatórios com base em nomes de formulário.
   * user_touchpoint_id: Este campo permite que os usuários criem relatórios com contagens únicas de pontos de contato.
* [Este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/salesforce-package-consolidation.md){target="_blank"} O inclui guias sobre como recriar relatórios e painéis dos pacotes de relatórios herdados.

**Atualizações de versão da API do Salesforce**

* Todas as versões da API do Salesforce das classes Apex, incluindo a classe UserActivityContext, são atualizadas para as versões compatíveis. (31.0 a 57.0)

**Instalação do novo pacote**

* O novo link de instalação do pacote consolidado [pode ser encontrada aqui](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1P000000VY6Z){target="_blank"}

### O que está por vir? {#whats-coming}

<p>

**Alterações no armazenamento do endereço IP**

* Não armazenaremos mais endereços IP em nosso sistema por considerações de privacidade. Continuaremos identificando e armazenando a localização geográfica do endereço IP, mas o formato será alterado (por exemplo, &quot;Estados Unidos&quot; para &quot;EUA&quot;).
