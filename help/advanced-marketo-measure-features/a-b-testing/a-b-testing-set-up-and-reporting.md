---
unique-page-id: 18874773
description: 'Configuração e criação de relatórios de teste A/B:  [!DNL Marketo Measure]'
title: Configuração e criação de relatórios de teste A/B
exl-id: 9a3f0731-5909-4fbf-a35a-9608ff561061
feature: A/B Testing
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: ht
source-wordcount: '415'
ht-degree: 100%

---

# Configuração e criação de relatórios de teste A/B {#a-b-testing-set-up-and-reporting}

A integração de teste A/B do [!DNL Marketo Measure] permite rastrear o impacto da receita dos experimentos no site do [Optimizely](https://www.optimizely.com/){target="_blank"} e do VWO. Este artigo fornece instruções sobre como adicionar seções de teste A/B do [!DNL Marketo Measure] aos layouts das páginas Lead, [!UICONTROL Contato], Caso e [!UICONTROL Oportunidade]. Ele também aborda as práticas gerais de relatório e as recomendações para executar relatórios do tipo A/B no [!DNL Marketo Measure].

## Configurar {#set-up}

Adicione as seções de teste A/B do [!DNL Marketo Measure] nas páginas Lead, Contato, Caso e Oportunidade. A integração de teste A/B do [!DNL Marketo Measure] permite rastrear o impacto da receita de seus experimentos do site [Optimizely](https://www.optimizely.com/){target="_blank"} and [VWO](https://vwo.com/){target="_blank"}.

1. Verifique se você está usando o pacote [!DNL Marketo Measure] v3.9 ou posterior. Para isso, acesse [!UICONTROL Salesforce] > [!UICONTROL Configurar] > [!UICONTROL Pacotes instalados].
1. Edite o layout da página Lead e adicione a lista relacionada de **[!DNL Marketo Measure]testes A/B** na página.

   ![](assets/1.png)

1. Clique no botão de [!UICONTROL chave inglesa]. Remova o campo “ID” do estoque da lista de campos selecionados. Adicione os campos **[!UICONTROL Experimento]**, **[!UICONTROL Variação]**, e **[!UICONTROL Data do relatório]**. Altere “[!UICONTROL Classificar por]” para **[!UICONTROL Data do relatório]** e selecione **[!UICONTROL Decrescente]** no menu suspenso.

   ![](assets/2.png)

1. Em [!UICONTROL Botões], desmarque **[!UICONTROL Novo]**.

   ![](assets/3.png)

1. Entre em contato com o(a) representante do [!DNL Marketo Measure] ou com o [Suporte do Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para habilitar o recurso.

## Geração de relatórios {#reporting}

Clientes têm acesso a alguns tipos de relatório A/B do [!DNL Marketo Measure] que permitem criar relatórios sobre o teste A/B em relação a leads, contatos e oportunidades:

* Testes A/B do [!DNL Marketo Measure]
* Testes A/B do [!DNL Marketo Measure] com contatos
* Testes A/B do [!DNL Marketo Measure] com leads
* Testes A/B do [!DNL Marketo Measure] com oportunidades

![](assets/4.png)

Os tipos de relatório A/B são usados para relatar qual lead, contato ou oportunidade foi exposto a um teste A/B. Esses relatórios também mostram a quantidade de receita vinculada a uma oportunidade exposta a um teste A/B.

É importante observar que o Optimizely/VWO é uma plataforma de variação de conteúdo e não um canal de marketing. Portanto, esses tipos de relatório A/B do [!DNL Marketo Measure] são usados de forma diferente dos relatórios do Buyer Touchpoint. Os relatórios do tipo Buyer Touchpoint são usados para entender qual canal de marketing (publicidade paga, direto da web, rede social) levou um lead ou contato a uma página específica. No entanto, os tipos de relatório A/B do [!DNL Marketo Measure] não podem ser usados para relatar como uma variação influenciou um lead ou oportunidade. Visto que uma variação de teste A/B não é um canal, os detalhes da variação não aparecem no Buyer Touchpoint.

Veja alguns campos recomendados para usar ao criar relatórios de um teste A/B para entender melhor esse assunto:

* Lead convertido
* Experimento
* ID do experimento
* Variação
* ID da variação
* Data do relatório

## Exemplo de relatórios do [!DNL Salesforce] {#salesforce-example-reports}

Teste A/B do **[!DNL Marketo Measure]com leads**

![](assets/5.png)

Teste A/B do **[!DNL Marketo Measure]com oportunidades**

![](assets/6.png)
