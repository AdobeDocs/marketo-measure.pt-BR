---
unique-page-id: 18874710
description: Remoção e Supressão de Pontos de Contato - [!DNL Marketo Measure]
title: Remoção e supressão do touchpoint
exl-id: 201af648-6525-4a80-a7e5-3cbeeb1670b6
feature: Touchpoints
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '648'
ht-degree: 1%

---

# Remoção e supressão do touchpoint {#touchpoint-removal-and-touchpoint-suppression}

Saiba como remover ou suprimir pontos de contato que atendam a critérios específicos do seu CRM. Isso pode ser útil para liberar espaço de dados se você estiver tendo [!DNL Salesforce] limites de armazenamento de dados.

Há uma diferença importante entre as regras de Remoção de pontos de contato e as regras de Supressão de pontos de contato:

* Remoção do Ponto de Contato - [!DNL Marketo Measure] limpará (ou seja, removerá) todos os Pontos de Contato do seu CRM que se encaixem nos critérios da regra. Os dados _podem_ ser relatados no Painel de ROI [!DNL Marketo Measure], mas não estão mais no CRM.
* Supressão de pontos de contato - semelhante à Remoção de pontos de contato, mas os dados NÃO PODEM ser relatados no Painel de ROI.

Antes de começar a criar regras de remoção/supressão de Touchpoint, é uma boa ideia compartilhar seu plano de implementação com sua equipe de operações de marketing e vendas. Você já deve ter uma ideia de quais tipos ou valores deseja remover. Alguns dos casos de uso comuns são:

* Excluir pontos de contato de oportunidades perdidas fechadas
* Excluir pontos de contato de clientes em potencial muito antigos
* Excluir pontos de contato de clientes potenciais não qualificados

Depois que as regras forem salvas, o [!DNL Marketo Measure] limpará e redistribuirá seu modelo de atribuição. Isso significa que os marcos e as posições mudarão, e o crédito de atribuição do seu canal mudará! Isso modificará seus dados; portanto, entre em contato com seu Gerente de sucesso se precisar de assistência.

`1)` Há duas seções para configurações de remoção/supressão. Você tem a opção de configurá-la para Pontos de Contato do Comprador (Clientes Potenciais e Contatos) ou Pontos de Contato de Atribuição do Comprador (Contatos, Oportunidades e Contas).

Comece adicionando uma regra e selecionando o Campo que definirá seus critérios.

Escolha em uma lista de Operadores que estarão relacionados ao próximo conjunto de valores, que você adicionará na próxima coluna.

![](assets/1-1.png)

>[!TIP]
>
>Para adicionar vários valores em um campo, use o operador &quot;corresponde a qualquer&quot; com vírgulas separando cada valor.

>[!TIP]
>
>Para considerar um valor em branco ou NULO em um campo, deixe a caixa [!UICONTROL Valor] vazia. Isso levará em conta cenários como avaliação em um ponto de contato sem URL de formulário.

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas são calculadas em segundo plano e não modificam um registro, o [!DNL Marketo Measure] não pode detectar se um registro se encaixa ou não em uma regra.

`2)` Adicione regras no mesmo grupo para utilizar a lógica &quot;AND&quot; na instrução.
Ou adicione novas instruções fora do grupo para utilizar a lógica &quot;OR&quot; na instrução.

![](assets/2.png)

`3)` Se suas regras se tornam complexas e você precisa recriar grupos e fazer pequenas alterações em cada instrução, use a opção [!UICONTROL Clone] para simplificar as coisas.

![](assets/3.png)

Se você cometer um erro, não se preocupe. Também é possível excluir linhas individuais da instrução ou grupos completos.

![](assets/4.png)

`4)` Configure regras para os pontos de contato de atribuição do comprador se desejar aplicá-las a ambos os objetos. Nossa flexibilidade permite definir regras para um ou ambos os objetos e pode optar por configurá-los para ambos se forem aplicáveis.

![](assets/5.png)

Para concluir, [!UICONTROL Salve e processe] suas regras. Se você estiver fazendo muitas alterações, certifique-se de Salvar as alterações ao longo do caminho. [!DNL Marketo Measure] não começará a remover seus Pontos de contato até que você clique em
[!UICONTROL **Salvar e Processar**].

| **Operador** | **Caso de uso** |
|---|---|
| É Igual a | Valor único - correspondência exata |
| contém | Valor único - contém valor |
| Corresponde a qualquer | Vários valores - Correspondência exata |
| Corresponde a Qualquer (Contém) | Vários valores - &#42;valor&#42;, &#42;valor, &#42;valor&#42; |

Para clientes usando o Dynamics que desejam configurar regras de Supressão com base em Status e/ou Statecode, exigimos a seguinte formatação ao configurar a regra: `[Object].Statecode` é igual/não igual a `[Status Value]`. Por exemplo, se o Código de estado no Dynamics ler &quot;1&quot; em um Contato e o Status ler &quot;Inativo&quot;, e você quiser suprimir todos esses Contatos, o seguinte formato estaria incorreto para a regra de supressão: Contact.Statecode é igual a 1. Em vez disso, você gostaria de usar o seguinte formato - já que o Statecode e o Status operam como um par, o [!DNL Marketo Measure] lê o valor do Status em nossa consulta: Contact.Statecode é igual a Inativo.
