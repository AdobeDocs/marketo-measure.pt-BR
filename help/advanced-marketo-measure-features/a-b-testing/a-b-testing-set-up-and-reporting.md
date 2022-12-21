---
unique-page-id: 18874773
description: Configuração e relatórios de testes A/B - [!DNL Marketo Measure] - Documentação do produto
title: Configuração e criação de relatórios de testes A/B
exl-id: 9a3f0731-5909-4fbf-a35a-9608ff561061
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '440'
ht-degree: 1%

---

# Configuração e criação de relatórios de testes A/B {#a-b-testing-set-up-and-reporting}

O [!DNL Marketo Measure] A integração do teste A/B permite rastrear o impacto da receita do [Otimizado](https://optimizely.com/){target=&quot;_blank&quot;} e experimentos de site VWO. Este guia de artigo fornece instruções sobre como adicionar [!DNL Marketo Measure] seções Teste A/B ao cliente potencial, [!UICONTROL Contato], Caso e [!UICONTROL Oportunidade] layouts de página. Também abordaremos práticas gerais de relatórios e recomendações de execução [!DNL Marketo Measure] Tipos de relatório A/B.

## Configurar {#set-up}

Adicione o [!DNL Marketo Measure] seções Teste A/B sobre lead, contato, caso e oportunidade. [!DNL Marketo Measure] A integração do teste A/B permite rastrear o impacto da receita do [Otimizado](https://optimizely.com/){target=&quot;_blank&quot;} e [VWO](https://vwo.com/)Experimentos de site do {target=&quot;_blank&quot;}.

1. Verifique se você está usando o pacote [!DNL Marketo Measure] v3.9 ou posterior. Você pode fazer isso indo para [!UICONTROL Salesforce] >[!UICONTROL Configurar] > [!UICONTROL Pacotes instalados].
1. Edite o layout da Página de lead e adicione o **[!DNL Marketo Measure]Testes A/B** Lista relacionada à página.

   ![](assets/1.png)

1. Clique no botão [!UICONTROL Chave inglesa] botão. Remova o campo &quot;Id&quot; de estoque da lista de campos Selecionados. Adicionar **[!UICONTROL Experimento]**, **[!UICONTROL Variação]** e **[!UICONTROL DateReported]** campos. Alterar &quot;[!UICONTROL Classificar por]&quot; para **[!UICONTROL Data de comunicação]** e selecione **[!UICONTROL Decrescente]** no menu suspenso .

   ![](assets/2.png)

1. Em [!UICONTROL Botões], desmarcar **[!UICONTROL Novo]**.

   ![](assets/3.png)

1. Entre em contato com seu [!DNL Marketo Measure] rep ou [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target=&quot;_blank&quot;} para habilitar o recurso.

## Gerando relatório {#reporting}

Os clientes têm acesso a alguns [!DNL Marketo Measure] Tipos de relatório A/B que permitem relatar sobre o Teste A/B em relação a Clientes potenciais, Contatos e Oportunidades:

* [!DNL Marketo Measure] A/BTests
* [!DNL Marketo Measure] A/BTest com contato
* [!DNL Marketo Measure] A/BTest com lead
* [!DNL Marketo Measure] A/BTests com Oportunidade

![](assets/4.png)

Os tipos de relatório A/B são usados para relatar qual Lead ou Contato ou Oportunidade foi exposto a um teste A/B. Além disso, esses relatórios podem mostrar a quantidade de receita vinculada a uma Oportunidade que foi exposta a um teste A/B.

É importante observar que Otimizely/VWO é uma plataforma de variação de conteúdo e não um canal de marketing. Por conseguinte, estes [!DNL Marketo Measure] Os tipos de relatórios A/B são usados de forma diferente dos relatórios de Ponto de contato do comprador. Os tipos de relatórios de ponto de contato do comprador são usados para entender qual canal de marketing (por exemplo, publicidade paga, direto da Web, social) levou um cliente em potencial ou Contato para uma página específica. No entanto, [!DNL Marketo Measure] Os tipos de relatório A/B não podem ser usados para relatar como uma variação influenciou um Lead ou Oportunidade. Além disso, como uma variação de teste A/B não é um canal, os detalhes sobre a variação não aparecerão no ponto de contato do comprador.

Estes são alguns campos comuns que recomendamos usar ao relatar em testes A/B para ajudar a aumentar a clareza e o insight:

* Lead convertido
* Experimento
* ID do experimento
* Variação
* ID da variação
* Data de comunicação

## [!DNL Salesforce] Relatórios de exemplo {#salesforce-example-reports}

**[!DNL Marketo Measure]Teste A/B com lead**

![](assets/5.png)

**[!DNL Marketo Measure]Teste A/B com oportunidade**

![](assets/6.png)
