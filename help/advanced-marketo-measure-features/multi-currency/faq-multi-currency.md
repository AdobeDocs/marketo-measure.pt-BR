---
unique-page-id: 27656745
description: Perguntas frequentes (várias moedas) - [!DNL Marketo Measure] - Documentação do produto
title: Perguntas frequentes (várias moedas)
exl-id: 1d0936fb-4e66-4877-98d2-32c678a7ef3e
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '789'
ht-degree: 0%

---

# Perguntas frequentes (várias moedas) {#faq-multi-currency}

**Como sei qual bit de recurso ativar?**

Lembre-se de que há dois bits de recurso diferentes para esse recurso. Ambos estão localizados na guia Geral da seção CRM em Configurações: Várias Moedas e Moedas Avançadas. Várias Moedas devem ser ativadas se o cliente utilizar mais do que uma moeda única, enquanto o elemento adicional bit Moedas Avançadas pode ser ativado se o cliente usar [!DNL Salesforce]O recurso de &quot;Gerenciamento de moeda avançado&quot; , no qual o usuário pode definir um intervalo com base no tempo para as taxas de conversão.

Infelizmente, não sabemos quando um cliente muda entre Simples ou Avançado se o Advanced já tiver sido ativado. Por causa disso, o cliente precisa manter a configuração Moedas avançadas alinhada à configuração de CRM manualmente. Isso deve ser aparente para o cliente se as conversões estiverem incorretas, o que significa que não sabíamos qual nível de conversão aplicar.

**Por que minha conta de anúncios está me dando uma mensagem de aviso?**

Exibiremos uma mensagem de aviso ao lado da sua conta publicitária que pode ter moedas provenientes de uma moeda não suportada. Se isso acontecer, seus painéis conterão blocos com uma mensagem &quot;Moedas mistas&quot;. Recomendamos que você trabalhe com seu Administrador do CRM para garantir que essa moeda desconhecida contenha uma conversão em seu CRM.

**O que significa &quot;Moedas mistas&quot; no meu bloco do painel?**

Se você tiver um bloco com a mensagem &quot;Moedas mistas&quot; na parte inferior, isso significa que importamos alguns custos que são mapeados para uma moeda que não reconhecemos. Como todas as nossas conversões devem vir do CRM com uma taxa de conversão real, significa que o CRM está sem essa moeda. Recomendamos que você trabalhe com seu Administrador do CRM para garantir que essa moeda desconhecida contenha uma conversão em seu CRM.

**Como posso adicionar uma nova moeda ou taxa de conversão?**

A declaração de uma nova moeda ou taxa de conversão só pode ser feita em [!DNL Salesforce] ou [!DNL Dynamics] assim, existe apenas uma única fonte de verdade para esses valores. Depois que uma nova moeda ou taxa de conversão é detectada, [!DNL Marketo Measure] O baixará e o disponibilizará para você. Não oferecemos uma área para introduzir estas taxas.

**A moeda não está sendo exibida no formato correto. Como posso mudar isso?**

Sabemos que alguns países têm uma forma diferente de formatar montantes (por exemplo, 1.234.00, 1.234, 1.234). Mas introduzimos outro nível de complexidade, se tivermos de determinar não só a moeda de um utilizador, mas também o seu país de origem, uma vez que diferentes países e moedas podem ser tratados de forma diferente. O formato consistente que escolhemos é 1.234.00. Isso não pode ser alterado.

**Por que você não pode exibir o símbolo de moeda para a minha moeda selecionada?**

[!DNL Salesforce] e [!DNL Dynamics] exibe seus valores com o Código de conversão de 3 letras. Assim, por questões de consistência, nossos valores convertidos também são exibidos com o Código de conversão de 3 letras e não com o símbolo .

**O que meus clientes verão se não tiverem várias moedas ativadas?**

Se o cliente não tiver o recurso de várias moedas, o padrão será a localidade da moeda do CRM e alterar todos os códigos ISO que mostram seu gasto e receita na moeda corporativa. Se isso estiver incorreto e o cliente tiver um uso misto de moeda, a solução seria atualizar para obter o recurso de várias moedas.

**Como esse recurso afeta relatórios baseados em pontos de contato no CRM?**

Para [!DNL Dynamics] e [!DNL Salesforce] clientes que usam apenas o gerenciamento básico (não avançado) de moeda, os valores da receita do ponto de contato devem ser convertidos corretamente, de modo que os relatórios de CRM devem funcionar conforme esperado.

Infelizmente, há alguma nuvem sobre como isso funciona para usuários de [!DNL Salesforce] Gerenciamento avançado de moeda, devido a uma limitação de longa data de [!DNL Salesforce]. A resposta curta para &quot;o que fazemos neste caso&quot; é que convertemos os valores da receita usando as taxas fixas definidas na guia básica (ou seja, não avançada) &quot;Gerenciar moedas&quot;. Por outras palavras, ignoramos completamente as taxas de câmbio datadas, apesar de o cliente ter definido taxas de câmbio datadas.

Para o leitor interessado, é por isso que funciona assim. Nossos pontos de contato usam campos de fórmula para calcular a receita (derivada da quantidade de oportunidade associada). [!DNL Salesforce] suporta nativamente a conversão de moeda para esses cálculos de fórmula, mas somente para seu sabor básico de suporte de moeda. É impossível para nós definir um campo de fórmula que faça referência às taxas de câmbio datadas. [!DNL Salesforce] simplesmente não apoia essa capacidade, pelo que não temos como fazer referência às taxas datadas nos nossos cálculos de receitas, apesar de essas taxas datadas existirem em [!DNL Salesforce] (parece loucura, mas é assim que funciona.)

**Se meu cliente usou um workflow para preencher um campo convertido, como ele deve usar esse campo para frente?**

Como nossa oferta agora lidará com as conversões para o cliente, recomendamos que ele remova os workflows e o campo personalizado e nos permita importar seu valor de Quantia bruta.
