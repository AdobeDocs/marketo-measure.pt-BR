---
description: 'Configuração e criação de relatórios de teste A/B:  [!DNL Marketo Measure]'
title: Configuração e criação de relatórios de teste A/B
exl-id: 9a3f0731-5909-4fbf-a35a-9608ff561061
feature: A/B Testing
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '496'
ht-degree: 74%

---


# Configuração e criação de relatórios de teste A/B {#a-b-testing-set-up-and-reporting}

A integração do Teste A/B [!DNL Marketo Measure] permite rastrear o impacto da receita dos experimentos do site [Otimizely](https://www.optimizely.com/){target="_blank"} e VWO. Este artigo fornece instruções sobre como adicionar seções de teste A/B do [!DNL Marketo Measure] aos layouts das páginas Lead, [!UICONTROL Contato], Caso e [!UICONTROL Oportunidade]. Ele também aborda as práticas gerais de relatório e as recomendações para executar relatórios do tipo A/B no [!DNL Marketo Measure].

## Configurar {#set-up}

Adicione as seções de teste A/B do [!DNL Marketo Measure] nas páginas Lead, Contato, Caso e Oportunidade. A integração do Teste A/B [!DNL Marketo Measure] permite rastrear o impacto da receita dos experimentos do site [Otimizely](https://www.optimizely.com/){target="_blank"} e [VWO](https://vwo.com/){target="_blank"}.

1. Verifique se você está usando o pacote [!DNL Marketo Measure] v3.9 ou posterior. Para isso, acesse [!UICONTROL Salesforce] > [!UICONTROL Configurar] > [!UICONTROL Pacotes instalados].
1. Edite o layout da página Lead e adicione a lista relacionada de **[!DNL Marketo Measure]testes A/B** na página.

   ![Editor de layout de página de cliente potencial mostrando a Lista Relacionada a Testes A/B do Marketo Measure sendo adicionada](assets/1.png)

1. Clique no botão de [!UICONTROL chave inglesa]. Remova o campo “ID” do estoque da lista de campos selecionados. Adicione os campos **[!UICONTROL Experimento]**, **[!UICONTROL Variação]**, e **[!UICONTROL Data do relatório]**. Altere “[!UICONTROL Classificar por]” para **[!UICONTROL Data do relatório]** e selecione **[!UICONTROL Decrescente]** no menu suspenso.

   ![Caixa de diálogo de configuração de campo mostrando campos Experimento, Variação e DateReported com configurações de classificação](assets/2.png)

1. Em [!UICONTROL Botões], desmarque **[!UICONTROL Novo]**.

   ![Seção de botões mostrando o botão Novo sendo desmarcado](assets/3.png)

1. Contate o representante do [!DNL Marketo Measure] ou o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para habilitar o recurso.

## Geração de relatórios {#reporting}

Clientes têm acesso a alguns tipos de relatório A/B do [!DNL Marketo Measure] que permitem criar relatórios sobre o teste A/B em relação a leads, contatos e oportunidades:

* Testes A/B do [!DNL Marketo Measure]
* Testes A/B do [!DNL Marketo Measure] com contatos
* Testes A/B do [!DNL Marketo Measure] com leads
* Testes A/B do [!DNL Marketo Measure] com oportunidades

![Lista de relatórios que mostra os tipos de relatório de Testes A/B do Marketo Measure para cliente potencial, contato e oportunidade](assets/4.png)

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

![Exemplo de relatório do Salesforce mostrando o teste A/B do Marketo Measure com dados de cliente potencial, incluindo experimentos e variações](assets/5.png)

Teste A/B do **[!DNL Marketo Measure]com oportunidades**

![Exemplo de relatório do Salesforce mostrando o teste A/B do Marketo Measure com dados de oportunidade, incluindo o impacto na receita](assets/6.png)
