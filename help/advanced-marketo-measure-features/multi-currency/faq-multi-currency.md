---
unique-page-id: 27656745
description: Perguntas frequentes (várias moedas) - [!DNL Marketo Measure] - Documentação do produto
title: Perguntas frequentes (várias moedas)
exl-id: 1d0936fb-4e66-4877-98d2-32c678a7ef3e
feature: Multi-Currency
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '789'
ht-degree: 0%

---

# Perguntas frequentes (várias moedas) {#faq-multi-currency}

**Como sei qual bit de recurso habilitar?**

Lembre-se de que há dois bits de recursos diferentes para esse recurso. Ambos estão localizados na guia Geral da seção CRM em Configurações: Várias Moedas e Moedas Avançadas. Várias Moedas devem ser ativadas se o cliente utilizar mais de uma moeda única, enquanto o bit de recurso adicional Moedas avançadas pode ser ativado se o cliente utilizar [!DNL Salesforce]O recurso &quot;Gerenciamento avançado de moeda&quot; do, no qual o usuário pode definir um intervalo com base no tempo para taxas de conversão.

Infelizmente, não sabemos quando um cliente alterna entre Simples ou Avançado, se o Avançado já estiver ativado. Por causa disso, o cliente precisa manter a configuração Advanced Currencies alinhada manualmente à configuração do CRM. Isso deve estar claro para o cliente se as conversões estiverem incorretas, o que significa que não sabíamos qual nível de conversão aplicar.

**Por que minha conta de anúncios está me dando uma mensagem de aviso?**

Exibiremos uma mensagem de aviso ao lado da sua conta de anúncios que pode ter moedas provenientes de uma moeda não compatível. Se isso acontecer, seus painéis conterão blocos com uma mensagem &quot;Moedas mistas&quot;. Recomendamos que você trabalhe com seu Administrador do CRM para verificar se essa moeda desconhecida contém uma conversão em seu CRM.

**O que significa &quot;Moedas mistas&quot; no meu bloco do painel?**

Se você tiver um bloco com uma mensagem &quot;Moedas mistas&quot; na parte inferior, isso significa que importamos alguns custos que estão mapeados para uma moeda que não reconhecemos. Como todas as nossas conversões devem vir do CRM com uma taxa de conversão real, significa que seu CRM não tem essa moeda. Recomendamos que você trabalhe com seu Administrador do CRM para verificar se essa moeda desconhecida contém uma conversão em seu CRM.

**Como posso adicionar uma nova moeda ou taxa de conversão?**

A declaração de uma nova moeda ou taxa de conversão só pode ser feita em [!DNL Salesforce] ou [!DNL Dynamics] para que haja apenas uma única fonte de verdade para esses valores. Quando uma nova moeda ou taxa de conversão for detectada, [!DNL Marketo Measure] O baixará o arquivo e o disponibilizará para você. Não oferecemos uma área para inserir essas taxas.

**A moeda não está sendo exibida no formato correto. Como posso alterar isso?**

Entendemos que alguns países têm uma maneira diferente de formatar valores (por exemplo, 1.234,00, 1.234, 1.234). Mas introduzimos outro nível de complexidade se tivermos de determinar não só a moeda de um usuário, mas também o seu país de origem, uma vez que países e moedas diferentes podem ser tratados de forma diferente. O formato consistente escolhido é 1.234,00. Isso não pode ser alterado.

**Por que você não pode exibir o símbolo de moeda da minha moeda selecionada?**

[!DNL Salesforce] e [!DNL Dynamics] exiba os valores com o Código de conversão de 3 letras. Portanto, para manter a consistência, nossos valores convertidos também são exibidos com o Código de conversão de 3 letras e não com o símbolo.

**O que meu cliente verá se ele não tiver multimoeda ativada?**

Se o cliente não tiver o recurso multimoeda, assumiremos como padrão a Localidade da moeda do CRM e alteraremos todos os códigos ISO que mostram suas despesas e receitas na moeda corporativa. Se isso estiver incorreto e o cliente tiver um uso misto de moeda, a solução seria atualizar para obter o recurso de várias moedas.

**Como esse recurso afeta relatórios baseados em pontos de contato no CRM?**

Para [!DNL Dynamics] e [!DNL Salesforce] clientes que usam apenas o gerenciamento de moeda básico (não avançado), os valores de receita dos pontos de contato devem ser convertidos corretamente, de modo que os relatórios de CRM funcionem conforme esperado.

Infelizmente, há algumas nuances em como isso funciona para usuários de [!DNL Salesforce] Gerenciamento avançado de moeda, devido a uma limitação de longa data do [!DNL Salesforce]. A resposta curta para &quot;o que fazemos neste caso&quot; é que convertemos valores de receita usando as taxas fixas definidas na guia básica (ou seja, não avançada) &quot;Gerenciar moedas&quot;. Em outras palavras, ignoramos completamente as taxas de câmbio datadas, apesar do fato de que o cliente definiu taxas de câmbio datadas.

Para o leitor interessado, veja por que funciona assim. Nossos pontos de contato usam campos de fórmula para calcular a receita (derivada do valor de oportunidade associado). [!DNL Salesforce] O suporta nativamente a conversão de moeda para esses cálculos de fórmula, mas apenas para seu tipo básico de suporte de moeda. É impossível para nós definir um campo de fórmula que faça referência às taxas de câmbio datadas. [!DNL Salesforce] O simplesmente não suporta esse recurso, portanto, não temos como fazer referência às taxas datadas em nossos cálculos de receita, apesar do fato de que essas taxas datadas existem no [!DNL Salesforce] (parece loucura, mas é assim que funciona.)

**Se meu cliente usou um fluxo de trabalho para preencher um campo convertido, como ele deve usar esse campo daqui para frente?**

Como nossa oferta agora lidará com as conversões para o cliente, recomendamos que removam os workflows e o campo personalizado e permitam importar seu valor bruto de Quantidade.
