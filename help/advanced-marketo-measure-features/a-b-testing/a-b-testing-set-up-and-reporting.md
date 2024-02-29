---
unique-page-id: 18874773
description: Configuração e relatórios do teste A/B - [!DNL Marketo Measure]
title: Configuração e criação de relatórios de teste A/B
exl-id: 9a3f0731-5909-4fbf-a35a-9608ff561061
feature: A/B Testing
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '415'
ht-degree: 5%

---

# Configuração e criação de relatórios de teste A/B {#a-b-testing-set-up-and-reporting}

A variável [!DNL Marketo Measure] A integração do Teste A/B permite rastrear o impacto da receita de seu [Otimizado](https://www.optimizely.com/){target="_blank"} e experimentos em locais VWO. Este artigo fornece instruções sobre como adicionar [!DNL Marketo Measure] Seções do teste A/B para o lead, [!UICONTROL Contato], Case e [!UICONTROL Oportunidade] layouts de página. Também são abordadas as práticas gerais de relatório e as recomendações para execução de [!DNL Marketo Measure] Tipos de relatório A/B.

## Configurar {#set-up}

Adicione o [!DNL Marketo Measure] Seções de teste A/B sobre lead, contato, caso e oportunidade. [!DNL Marketo Measure] A integração do Teste A/B permite rastrear o impacto da receita de seu [Otimizado](https://www.optimizely.com/){target="_blank"} and [VWO](https://vwo.com/){target="_blank"} experimentos no local.

1. Verifique se você está usando o pacote [!DNL Marketo Measure] v3.9 ou posterior. Você pode fazer isso acessando [!UICONTROL Salesforce] >[!UICONTROL Configurar] > [!UICONTROL Pacotes instalados].
1. Editar o layout da página de clientes potenciais e adicionar o **[!DNL Marketo Measure]Testes A/B** Lista relacionada à página.

   ![](assets/1.png)

1. Clique em [!UICONTROL Chave inglesa] botão. Remova o campo &quot;Id&quot; do estoque da lista de Campos selecionados. Adicionar **[!UICONTROL Experimento]**, **[!UICONTROL Variação]**, e **[!UICONTROL Data do relatório]** campos. Alterar &quot;[!UICONTROL Classificar por]&quot; para **[!UICONTROL Data do relatório]** e selecione **[!UICONTROL Decrescente]** no menu suspenso.

   ![](assets/2.png)

1. Em [!UICONTROL Botões], desmarque **[!UICONTROL Novo]**.

   ![](assets/3.png)

1. Entre em contato com [!DNL Marketo Measure] rep ou [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para ativar o recurso.

## Gerando relatório {#reporting}

Os clientes têm acesso a alguns [!DNL Marketo Measure] Tipos de relatório A/B que permitem relatar sobre o Teste A/B em relação a clientes potenciais, contatos e oportunidades:

* [!DNL Marketo Measure] A/BTests
* [!DNL Marketo Measure] Testes A/B com contato
* [!DNL Marketo Measure] Testes A/B com lead
* [!DNL Marketo Measure] Testes A/B com oportunidade

![](assets/4.png)

Os tipos de relatório A/B são usados para informar sobre qual lead, contato ou oportunidade foi exposto a um teste A/B. Esses relatórios também mostram a quantidade de receita vinculada a uma Oportunidade que foi exposta a um teste A/B.

É importante observar que o Otimizely/VWO é uma plataforma de variação de conteúdo e não um canal de marketing. Por conseguinte, [!DNL Marketo Measure] Os tipos de relatório A/B são usados de forma diferente dos relatórios de Ponto de contato do comprador. Os tipos de relatórios de ponto de contato do comprador são usados para entender qual canal de marketing (publicidade paga, web direto, social) levou um cliente potencial ou contato a uma página específica. No entanto, [!DNL Marketo Measure] Os tipos de relatório A/B não podem ser usados para relatar como uma variação influenciou um cliente potencial ou uma oportunidade. Como uma variação de teste A/B não é um canal, os detalhes sobre a variação não aparecem no ponto de contato do Comprador.

Estes são alguns campos recomendados para usar ao criar relatórios em um teste A/B para ajudar a aumentar a clareza e a compreensão:

* Chumbo convertido
* Experimento
* ID do experimento
* Variação
* ID da variação
* Data do relatório

## [!DNL Salesforce] Exemplo de relatórios {#salesforce-example-reports}

**[!DNL Marketo Measure]Teste A/B com lead**

![](assets/5.png)

**[!DNL Marketo Measure]Teste A/B com oportunidade**

![](assets/6.png)
