---
unique-page-id: 18874710
description: Remoção do ponto de contato e supressão do ponto de contato - [!DNL Marketo Measure] - Documentação do produto
title: Remoção e supressão do touchpoint
exl-id: 201af648-6525-4a80-a7e5-3cbeeb1670b6
feature: Touchpoints
source-git-commit: cc786cb3af08fa36af91ef22f4dba3072c9617eb
workflow-type: tm+mt
source-wordcount: '650'
ht-degree: 1%

---

# Remoção e supressão do touchpoint {#touchpoint-removal-and-touchpoint-suppression}

Saiba como remover ou suprimir pontos de contato que atendam a critérios específicos do seu CRM. Isso pode ser útil para liberar espaço de dados se você estiver tendo [!DNL Salesforce] limites de armazenamento de dados.

Há uma diferença importante entre as regras de Remoção de pontos de contato e as regras de Supressão de pontos de contato:

* Remoção do ponto de contato - [!DNL Marketo Measure] O removerá (ou seja, removerá) todos os pontos de contato do CRM que se encaixem nos critérios da regra. Os dados _pode_ ser reportado dentro de [!DNL Marketo Measure] Painel de ROI, mas não mais no CRM.
* Supressão de pontos de contato - semelhante à Remoção de pontos de contato, mas os dados NÃO PODEM ser relatados no Painel de ROI.

Antes de começar a criar regras de remoção/supressão de Touchpoint, é uma boa ideia compartilhar seu plano de implementação com sua equipe de operações de marketing e vendas. Você já deve ter uma ideia de quais tipos ou valores deseja remover. Alguns dos casos de uso comuns são:

* Excluir pontos de contato de oportunidades perdidas fechadas
* Excluir pontos de contato de clientes em potencial muito antigos
* Excluir pontos de contato de clientes potenciais não qualificados

Depois que as regras forem salvas, [!DNL Marketo Measure] O limpará e redistribuirá seu modelo de atribuição. Isso significa que os marcos e as posições mudarão, e o crédito de atribuição do seu canal mudará! Isso modificará seus dados; portanto, entre em contato com seu Gerente de sucesso se precisar de assistência.

`1)` Há duas seções para configurações de remoção/supressão. Você tem a opção de configurá-la para Pontos de Contato do Comprador (Clientes Potenciais e Contatos) ou Pontos de Contato de Atribuição do Comprador (Contatos, Oportunidades e Contas).

Comece adicionando uma regra e selecionando o Campo que definirá seus critérios.

Escolha em uma lista de Operadores que estarão relacionados ao próximo conjunto de valores, que você adicionará na próxima coluna.

![](assets/1-1.png)

>[!TIP]
>
>Para adicionar vários valores em um campo, use o operador &quot;corresponde a qualquer&quot; com vírgulas separando cada valor.

>[!TIP]
>
>Para contabilizar um valor em branco ou NULO em um campo, basta deixar a variável [!UICONTROL Valor] caixa vazia. Isso levará em conta cenários como avaliação em um ponto de contato sem URL de formulário.

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas calculam em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa ou não em uma regra.

`2)` Adicione regras no mesmo grupo para utilizar a lógica &quot;AND&quot; na instrução.
Ou adicione novas instruções fora do grupo para utilizar a lógica &quot;OR&quot; na instrução.

![](assets/2.png)

`3)` Se as regras se tornarem complexas e você precisar recriar grupos e fazer pequenas alterações em cada instrução, use o [!UICONTROL Clonar] opção para simplificar as coisas.

![](assets/3.png)

Se você cometer um erro, não se preocupe. Também é possível excluir linhas individuais da instrução ou grupos completos.

![](assets/4.png)

`4)` Configure regras para os Pontos de contato de atribuição do comprador se desejar aplicá-las a ambos os objetos. Nossa flexibilidade permite definir regras para um ou ambos os objetos e pode optar por configurá-los para ambos se forem aplicáveis.

![](assets/5.png)

Para concluir, [!UICONTROL Salvar e processar] suas regras. Se você estiver fazendo muitas alterações, não deixe de Salvar as alterações ao longo do caminho. [!DNL Marketo Measure] não começará a remover seus Pontos de contato até que você clique no botão **Salvar e processar** botão.

| **Operador** | **Caso de uso** |
|---|---|
| É Igual a | Valor único - correspondência exata |
| Contém | Valor único - contém valor |
| Corresponde a qualquer | Vários valores - Correspondência exata |
| Corresponde a Qualquer (Contém) | Vários valores - &#42;value&#42;, &#42;valor, &#42;value&#42; |

Para clientes que usam o Dynamics e desejam configurar regras de Supressão com base em Status e/ou Código de Estado, é necessária a seguinte formatação ao configurar a regra: `[Object].Statecode` é igual/não é igual a `[Status Value]`. Por exemplo, se o Código de estado no Dynamics ler &quot;1&quot; em um Contato e o Status ler &quot;Inativo&quot;, e você quiser suprimir todos esses Contatos, o seguinte formato estaria incorreto para a regra de supressão: Contact.Statecode é igual a 1. Em vez disso, você gostaria de usar o seguinte formato - já que o código de estado e o status operam como um par, [!DNL Marketo Measure] O lê o valor de Status em nossa consulta: Contact.Statecode é igual a Inativo.
