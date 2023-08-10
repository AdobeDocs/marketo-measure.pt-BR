---
description: Notas de versão atuais - [!DNL Marketo Measure] - Documentação do produto
title: Notas de versão atuais
exl-id: 64b8fce8-af7d-4991-b01e-3fcf375d14e7
feature: Release Notes
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '232'
ht-degree: 0%

---

# Notas de versão: 2023 {#release-notes-2023}

Abaixo você encontrará todos os recursos novos e atualizados das versões de 2023.

## Versão do segundo trimestre {#q2-release}

<p>

**Consolidação de pacotes do Salesforce**

* Estamos mesclando todos os pacotes do Salesforce em um único pacote abrangente para melhorar a experiência do usuário e simplificar o uso. Os pacotes V1, V2_EXT e Relatórios serão desativados no próximo trimestre. O novo pacote combina todos os recursos anteriores, permitindo um rastreamento mais eficiente e insights mais profundos do cliente.
* Os clientes que já têm o pacote V2 instalado devem atualizá-lo para a nova versão consolidada.
* Adicionamos dois novos campos para aprimorar seus recursos de relatórios:
   * form_name: Agora disponível em objetos BT/BAT, esse campo permite que os usuários criem relatórios com base em nomes de formulário.
   * user_touchpoint_id: esse campo permite que os usuários criem relatórios com contagens de pontos de contato de usuário exclusivas.
* [Este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/salesforce-package-consolidation.md){target="_blank"} O inclui guias sobre como recriar relatórios e painéis de controle dos pacotes de relatórios herdados do.

**Atualizações de versão da API do Salesforce**

* Todas as versões da API do Salesforce das classes Apex, incluindo a classe UserActivityContext, são atualizadas para versões compatíveis. (31.0 a 57.0)

**Instalação de novo pacote**

* O link de instalação do novo pacote consolidado [pode ser encontrado aqui](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1P000000VY6Z){target="_blank"}

### O que está por vir? {#whats-coming}

<p>

**Alterações no armazenamento de endereço IP**

* Não armazenaremos mais endereços IP em nosso sistema conforme as considerações de privacidade. Continuaremos a identificar e armazenar a localização geográfica do endereço IP, mas o formato será alterado (por exemplo, &quot;Estados Unidos&quot; para &quot;EUA&quot;).
