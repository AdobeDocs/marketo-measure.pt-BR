---
unique-page-id: 18874708
description: Atribuição de atividades do Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Atribuição de atividades do Salesforce
exl-id: 1dc6f15b-2a45-4ed3-9fa3-5267366d1f45
feature: Attribution, Salesforce
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '678'
ht-degree: 1%

---

# Atribuição de atividades do Salesforce {#salesforce-activities-attribution}

A variável [!DNL Marketo Measure] A integração das Atividades do Salesforce trará registros específicos de Tarefas e Eventos para seu modelo de atribuição. Comece a rastrear emails de vendas ou telefonemas de vendas que não estavam recebendo o devido crédito. Para configurar a regra de atividades, é necessário acessar [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}. A partir daí, acesse o **[!UICONTROL Configurações]** e clique na guia **[!UICONTROL Atividades]** guia.

Você está prestes a deixar sua equipe de vendas muito feliz! Vamos conduzi-lo por um tutorial rápido.

![](assets/1.png)

Para começar, estamos introduzindo um novo conceito chamado [!DNL Marketo Measure] Campanha. Para cada regra definida, você classificará os registros em um [!DNL Marketo Measure] Campanha que você pode nomear. Adicione várias campanhas conforme necessário. Imagine medir a eficácia de uma campanha de vendas de saída ao lado de uma campanha de mídia paga!

Você vai usar isto [!DNL Marketo Measure] Nome da campanha para informar a qual canal ele deve ser mapeado. Se você ainda estiver pensando em Vendas de saída, talvez todas as campanhas de Vendas de saída devam ficar em um canal de BDR.

Familiarize-se com essa hierarquia:

* Canal
   * Subcanal
      * Campanha
      * Campanha
   * Subcanal
      * Campanha

>[!TIP]
>
>Se você quiser definir uma Campanha exclusiva para cada representante de vendas, por exemplo, utilize os parâmetros de substituição dinâmicos para preencher a [!DNL Marketo Measure] Nome da campanha. No nosso mesmo exemplo, você pode inserir `"Outbound Sales - {AssignedTo}"` e vamos transformá-la em algo como `"Outbound Sales - Jill"` ou `"Outbound Sales - Jack."` Você não tem ideia de quanto tempo nós apenas lhe salvamos!

![](assets/2.png)

Uma vez que o [!DNL Marketo Measure] Campaign Name está definido, é hora de configurar suas Regras de atividade.

As regras atuam como um filtro para informar quais registros estão qualificados para atribuição. Imagine que você esteja criando um relatório no seu CRM usando uma lógica semelhante para gerar esse relatório. Você tem a flexibilidade de usar uma combinação de instruções e/ou e vários operadores, como corresponde a qualquer, contém, começa com, termina com, é igual a, etc. Defina instruções &quot;and&quot; em uma regra in a box ou instruções &quot;or&quot; de camada fora da caixa.

![](assets/3.png)

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas calculam em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa ou não em uma regra.
>
>Use os valores corretos para campos de ID, como CrmEvent.CreatedById. [!DNL Salesforce IDs] têm 18 caracteres (por exemplo, 0054H000007WmrfQAC).

Por fim, vamos escolher um dos seus campos de data ou data/hora para utilizar como a Data do ponto de contato do comprador. Os campos padrão e personalizados podem ser selecionados.

>[!TIP]
>
>Com a instalação do pacote, [!DNL Marketo Measure] inclui um campo personalizado Data do ponto de contato do comprador no registro Atividade. Se você quiser usar uma data dinâmica, como a data em que um status muda, é possível usar um fluxo de trabalho do CRM para definir a &quot;Data do ponto de contato do comprador&quot; e, em seguida, selecionar a Data do ponto de contato do comprador aqui nesta etapa.

![](assets/4.png)

Não se esqueça de definir regras diferentes para Tarefas ou Eventos. Você precisará saber qual objeto sua equipe de vendas usa para registrar as atividades deles.

![](assets/5.png)

Você provavelmente desejará colocar esses novos pontos de contato em seus [Canal de marketing](https://experience.adobe.com/#/marketo-measure/MyAccount/Business?busView=false&amp;id=10#/!/MyAccount/Business/Account.Settings.SettingsHome?tab=Channels.Online%20Canais){target="_blank"}. Você pode fazer isso definindo o Canal com o novo mapeamento de campanha que acabou de criar. Talvez você crie uma nova linha para o canal BDR em que a Campanha começa com Saída.

>[!TIP]
>
>Ao adicionar uma definição de Canal, use valores curingas, uma maneira mais fácil de declarar operadores como:
>
>começa com ( saída&#42; )
>
>contém ( &#42;Saída&#42; )
>
>termina com ( &#42;Saída )
>
>Nenhum curinga significa basicamente &quot;é igual a&quot;, portanto, certifique-se de usá-los conforme necessário.

| **Operador** | **Caso de uso** |
|---|---|
| É Igual a | Valor único - correspondência exata |
| Contém | Valor único - contém valor |
| Corresponde a qualquer | Vários valores - Correspondência exata |
| Corresponde a Qualquer (Contém) | Vários valores - &#42;value&#42;, &#42;valor, &#42;value&#42; |

![](assets/6.png)

E por último, mas não menos importante, você tem a opção de inserir custos para seus novos canais. Nosso [Upload de gastos de marketing](https://experience.adobe.com/#/marketo-measure/MyAccount/Business?busView=false&amp;id=10#/!/MyAccount/Business/Account.Settings.SettingsHome?tab=Reporting.Marketing%20Gastos){target="_blank"} O permite inserir seu gasto no nível do Canal, Subcanal ou Campanha. Com o seu novo [!DNL Marketo Measure] Campanhas, você pode adicionar esses custos relacionados por mês e depois ver o ROI de cada campanha!

![](assets/7.png)

>[!MORELIKETHIS]
>
>[Perguntas frequentes sobre atribuição de atividade](/help/advanced-marketo-measure-features/activities-attribution/activities-attribution-faq.md)
