---
unique-page-id: 18874710
description: Remoção do ponto de contato e supressão do ponto de contato - [!DNL Marketo Measure] - Documentação do produto
title: Remoção do ponto de contato e supressão do ponto de contato
exl-id: 201af648-6525-4a80-a7e5-3cbeeb1670b6
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '648'
ht-degree: 0%

---

# Remoção do ponto de contato e supressão do ponto de contato {#touchpoint-removal-and-touchpoint-suppression}

Saiba como remover ou suprimir pontos de contato que atendem a critérios específicos do seu CRM. Isso pode ser útil para liberar o espaço de dados se você [!DNL Salesforce] limites de armazenamento de dados.

Há uma diferença entre as regras de Remoção de ponto de contato e as regras de Supressão de ponto de contato:

* Remoção do ponto de contato - [!DNL Marketo Measure] eliminará (ou removerá) quaisquer pontos de contato do seu CRM que se encaixem nos critérios da regra. Os dados _can_ deve ser reportada no [!DNL Marketo Measure] Painel ROI, mas não mais no CRM.
* Supressão de ponto de contato - Semelhante à Remoção de ponto de contato, mas os dados NÃO podem ser relatados no painel ROI.

Antes de começar a criar regras de remoção/supressão de pontos de contato, convém compartilhar o plano de implementação com a equipe de operações de marketing e vendas. Você já deve ter uma ideia de quais tipos ou valores deseja remover. Alguns dos casos de uso comuns são:

* Excluir pontos de contato de oportunidades perdidas fechadas
* Excluir pontos de contato de leads muito antigos
* Excluir pontos de contato de leads não qualificados

Depois que as regras forem salvas, [!DNL Marketo Measure] O limpará e redistribuirá seu modelo de atribuição. Isso significa que os marcos e as posições serão alterados, e o crédito de atribuição do seu canal será alterado! Isso modificará seus dados, portanto, entre em contato com seu Gerente de sucesso se precisar de assistência.

`1)` Há duas seções para configurações de remoção/supressão. Você tem a opção de configurá-la para Pontos de contato do comprador (Clientes potenciais e contatos) ou Pontos de contato da atribuição do comprador (Contatos, Oportunidades e Contas).

Comece adicionando uma regra e selecionando o Campo que definirá seus critérios.

Escolha em uma lista de Operadores que se relacionará ao próximo conjunto de valores, que você adicionará na próxima coluna.

![](assets/1-1.png)

>[!TIP]
>
>Para adicionar vários valores em um campo, use o operador &quot;corresponde a qualquer&quot; com vírgulas separando cada valor.

>[!TIP]
>
>Para contabilizar um valor em branco ou NULL em um campo, deixe a caixa Value vazia. Isso levará em conta cenários como a avaliação em relação a um ponto de contato sem URL de formulário.

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de seleção. Como as fórmulas são calculadas em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa em uma regra ou não.

`2)` Adicione regras no mesmo grupo para utilizar a lógica &quot;AND&quot; em sua instrução.
Ou adicione novas instruções fora do grupo para utilizar a lógica &quot;OU&quot; em sua declaração.

![](assets/2.png)

`3)` Se as regras se tornarem complexas e você precisar recriar grupos e fazer pequenas alterações em cada instrução, use a opção Clonar para simplificar as coisas.

![](assets/3.png)

Se você cometer um erro, não se preocupe. Também é possível excluir linhas individuais de sua declaração ou grupos completos.

![](assets/4.png)

`4)` Configure as regras para os Pontos de contato da atribuição do comprador, se desejar que sejam aplicadas a ambos os objetos. Nossa flexibilidade permite que você defina regras para um objeto ou ambos e pode optar por configurá-las para ambos, se elas se aplicarem.

![](assets/5.png)

Para concluir, Salve e processe suas regras. Se você estiver fazendo muitas alterações, certifique-se de Salvar suas alterações ao longo do caminho. [!DNL Marketo Measure] não começará a remover seus pontos de contato até clicar no botão **Salvar e processar** botão.

| **Operador** | **Caso de uso** |
|---|---|
| É Igual A | Valor único - correspondência exata |
| Contém | Valor único - contém valor |
| Corresponde a Qualquer | Vários valores - Correspondência exata |
| Corresponde a Qualquer (Contém) | Vários valores - &#42;value&#42;, &#42;valor, &#42;value&#42; |

Para clientes que usam o Dynamics que desejam configurar regras de Supressão baseadas em Status e/ou Status, exigimos a seguinte formatação ao configurar a regra: `[Object].Statecode` é igual/não igual a `[Status Value]`. Por exemplo, se o Código de Estado no Dynamics exibir &quot;1&quot; em um Contato e o Status exibir &quot;Inativo&quot; e você quiser suprimir todos esses Contatos, o formato a seguir estaria incorreto para a regra de Supressão: Contact.Statecode é igual a 1. Em vez disso, você gostaria de usar o seguinte formato - já que o Status e o Status operam como um par, [!DNL Marketo Measure] O lê o valor do Status em nossa consulta: Contact.Statecode é igual a Inativo.
