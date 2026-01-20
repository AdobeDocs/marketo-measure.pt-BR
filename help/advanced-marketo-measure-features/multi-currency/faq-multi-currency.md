---
unique-page-id: 27656745
description: Perguntas Frequentes (Multimoedas) - [!DNL Marketo Measure]
title: Perguntas frequentes (várias moedas)
exl-id: 1d0936fb-4e66-4877-98d2-32c678a7ef3e
feature: Multi-Currency
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '822'
ht-degree: 0%

---

# Perguntas frequentes (várias moedas) {#faq-multi-currency}

**Como saber qual bit de recurso habilitar?**

Lembre-se de que há dois bits de recursos diferentes para esse recurso. Ambos estão localizados na guia [!UICONTROL Geral] da seção CRM em Configurações: Várias Moedas e Moedas Avançadas. Várias Moedas devem ser habilitadas se o cliente utilizar mais de uma moeda única, enquanto o bit de recurso adicional Moedas avançadas pode ser habilitado se o cliente usar o recurso &quot;Gerenciamento avançado de moeda&quot; de [!DNL Salesforce], no qual o usuário pode definir um intervalo com base no tempo para taxas de conversão.

O Marketo Measure extrai automaticamente a configuração de moeda do CRM do cliente. A configuração manual no Marketo Measure para corresponder ao CRM não é mais necessária. A configuração de moeda pode ser encontrada na página &quot;Geral&quot; em &quot;CRM&quot;.

**Por que minha conta de anúncios está me dando uma mensagem de aviso?**

Exibiremos uma mensagem de aviso ao lado da sua conta de anúncios que pode ter moedas provenientes de uma moeda não compatível. Se isso acontecer, seus painéis conterão blocos com uma mensagem &quot;Moedas mistas&quot;. Recomendamos que você trabalhe com seu Administrador do CRM para verificar se essa moeda desconhecida contém uma conversão em seu CRM.

**O que significa &quot;Moedas Mistas&quot; no bloco do meu painel?**

Se você tiver um bloco com uma mensagem &quot;Moedas mistas&quot; na parte inferior, isso significa que importamos alguns custos que estão mapeados para uma moeda que não reconhecemos. Como todas as nossas conversões devem vir do CRM com uma taxa de conversão real, significa que seu CRM não tem essa moeda. Recomendamos que você trabalhe com seu Administrador do CRM para verificar se essa moeda desconhecida contém uma conversão em seu CRM.

**Como posso corrigir o erro &quot;Moedas Mistas&quot; causado por moedas inválidas?**

Nosso sistema atualiza moedas não reconhecidas para &quot;XXX&quot;. Para excluir Oportunidades com moedas inválidas, crie uma regra de supressão na página Configurações do ponto de contato para impedir pontos de contato para Oportunidades com a moeda &quot;XXX&quot;. Depois de processado, relataremos apenas as moedas conhecidas.

**Como posso adicionar uma nova moeda ou taxa de conversão?**

A declaração de uma nova moeda ou taxa de conversão só pode ser feita em [!DNL Salesforce] ou [!DNL Dynamics] de modo que haja apenas uma única fonte de verdade para esses valores. Depois que uma nova taxa de conversão ou moeda for detectada, o [!DNL Marketo Measure] baixará a nova moeda e a disponibilizará para você. Não oferecemos uma área para inserir essas taxas.

**A moeda não está sendo exibida no formato correto. Como posso alterar isso?**

Entendemos que alguns países têm uma maneira diferente de formatar valores (por exemplo, 1.234,00, 1.234, 1.234). Mas introduzimos outro nível de complexidade se tivermos de determinar não só a moeda de um usuário, mas também o seu país de origem, uma vez que países e moedas diferentes podem ser tratados de forma diferente. O formato consistente escolhido é 1.234,00. Isso não pode ser alterado.

**Por que você não pode exibir o símbolo de moeda para minha moeda selecionada?**

[!DNL Salesforce] e [!DNL Dynamics] exibem seus valores com o Código de conversão de 3 letras. Portanto, para manter a consistência, nossos valores convertidos também são exibidos com o Código de conversão de 3 letras e não com o símbolo.

**O que meu cliente verá se ele não tiver multimoeda habilitada?**

Se o cliente não tiver o recurso multimoeda, assumiremos como padrão a Localidade da moeda do CRM e alteraremos todos os códigos ISO que mostram suas despesas e receitas na moeda corporativa. Se isso estiver incorreto e o cliente tiver um uso misto de moeda, a solução seria atualizar para obter o recurso de várias moedas.

**Como esse recurso afeta relatórios baseados em pontos de contato no CRM?**

Para clientes do [!DNL Dynamics] e do [!DNL Salesforce] que usam apenas o gerenciamento de moeda básico (não avançado), os valores de receita dos pontos de contato devem ser convertidos corretamente; portanto, os relatórios do CRM devem funcionar conforme esperado.

Infelizmente, há algumas nuances no modo como isso funciona para usuários do Gerenciamento de Moeda Avançado do [!DNL Salesforce], devido a uma longa limitação do [!DNL Salesforce]. A resposta curta para &quot;o que fazemos neste caso&quot; é que convertemos valores de receita usando as taxas fixas definidas na guia básica (ou seja, não avançada) &quot;Gerenciar moedas&quot;. Em outras palavras, ignoramos completamente as taxas de câmbio datadas, apesar do fato de que o cliente definiu taxas de câmbio datadas.

Para o leitor interessado, veja por que funciona assim. Nossos pontos de contato usam campos de fórmula para calcular a receita (derivada do valor de oportunidade associado). O [!DNL Salesforce] oferece suporte nativo à conversão de moeda para esses cálculos de fórmula, mas apenas para o tipo básico de suporte à moeda. É impossível para nós definir um campo de fórmula que faça referência às taxas de câmbio datadas. O [!DNL Salesforce] simplesmente não oferece suporte a esse recurso, portanto, não temos como fazer referência às taxas datadas em nossos cálculos de receita, apesar do fato de que essas taxas datadas existem em [!DNL Salesforce] (parece loucura, mas é assim que funciona.)

**Se meu cliente usou um fluxo de trabalho para preencher um campo convertido, como ele deve usar esse campo daqui em diante?**

Como nossa oferta agora lidará com as conversões para o cliente, recomendamos que removam os workflows e o campo personalizado e permitam importar seu valor bruto de Quantidade.

>[!MORELIKETHIS]
>
>[Notificações de erro](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"}
