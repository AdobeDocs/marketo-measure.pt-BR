---
unique-page-id: 18874793
description: Usando um campo de valor de receita personalizado - [!DNL Marketo Measure] - Documentação do produto
title: Usando um Campo de Quantia de Receita Personalizada
exl-id: 517ea4f9-aa83-48d0-8ce7-003f4a907430
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '372'
ht-degree: 0%

---

# Usando um Campo de Quantia de Receita Personalizada {#using-a-custom-revenue-amount-field}

Por padrão, os pontos de contato de atribuição do comprador obterão a Quantidade da oportunidade de um dos dois campos:

* Valor (Padrão SFDC)
* [!DNL Marketo Measure] Valor da Oportunidade (Personalizado)

Se você estiver usando um campo Quantia personalizada em suas Oportunidades, precisaremos configurar um fluxo de trabalho para calcular a Receita do ponto de contato do comprador. Isso requer um conhecimento mais avançado de [!DNL Salesforce], portanto, pode precisar de assistência do administrador SFDC.

A partir de agora, precisaremos das seguintes informações:

* Nome da API do seu campo Valor

A partir daqui, começaremos a criar o workflow.

1. Navegar para **[!UICONTROL Configuração]** > **[!UICONTROL Criar]** > **[!UICONTROL Fluxo de trabalho e aprovações]** > **[!UICONTROL Regras de fluxo de trabalho]**.

   ![](assets/1.jpg)

1. Selecionar **[!UICONTROL Nova regra]**, defina o objeto como &quot;Oportunidade&quot; e clique em **[!UICONTROL Próximo]**.

   ![](assets/2.jpg)

   ![](assets/3.jpg)

1. Configure o workflow. Defina o nome da regra como &quot;Atualizar&quot; [!DNL Marketo Measure] Valor da Oportunidade.&quot; Defina os Critérios de avaliação como &quot;Criado e sempre que ele for editado&quot;. Para os Critérios da Regra, selecione o campo Quantia personalizada e selecione o Operador [!UICONTROL como &quot;Diferente de&quot;] e deixe o campo &quot;Value&quot; em branco.

   ![](assets/4.jpg)

1. Adicione uma ação de workflow. Definir esta lista de opções como &quot;[!UICONTROL Nova atualização de campo].&quot;

   ![](assets/5.jpg)

1. Aqui você preencherá as informações do campo. No campo &quot;Nome&quot;, recomendamos usar esta nomenclatura: &quot;[!DNL Marketo Measure] Valor da opção.&quot; O &quot;Nome exclusivo&quot; será preenchido automaticamente com base no campo &quot;Nome&quot;. Na lista de opções &quot;Campo a ser atualizado&quot;, selecione &quot;[!DNL Marketo Measure] Valor da Oportunidade.&quot; Depois de selecionar o campo, selecione a caixa &quot;Reavaliar regras do fluxo de trabalho após alteração do campo&quot;. Em &quot;Especificar novo valor de campo&quot;, selecione &quot;Usar fórmula para definir o novo valor&quot;. Na caixa vazia, solte o nome da API do seu campo Quantia personalizada. Clique em **[!UICONTROL Salvar]**.

   ![](assets/6.png)

1. Você será redirecionado para uma página de rollup do fluxo de trabalho, certifique-se de &quot;Ativar&quot; e estará pronto para prosseguir. Para ativar, clique em **Editar** ao lado do novo fluxo de trabalho e clique em **Ativar**.

   Após concluir essas etapas, as oportunidades precisarão ser atualizadas para acionar o fluxo de trabalho e ter o novo valor da variável [!UICONTROL oportunidade personalizada] campo.

   Isso pode ser feito executando suas oportunidades por meio do Data Loader no SFDC. Encontre detalhes sobre o uso do Carregador de dados em [este artigo](/help/advanced-marketo-measure-features/custom-revenue-amount/using-data-loader-to-update-marketo-measure-custom-amount-field.md).

Se houver alguma dúvida no caminho, não hesite em entrar em contato com o Gerente de sucesso do cliente ou [[!DNL Marketo] Suporte](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
