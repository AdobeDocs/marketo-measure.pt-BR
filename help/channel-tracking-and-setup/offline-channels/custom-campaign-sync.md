---
unique-page-id: 18874588
description: Sincronização de campanha personalizada - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de campanha personalizada
exl-id: 66f0e4e3-c1b6-443e-8ffa-06b67862b855
feature: Channels
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '658'
ht-degree: 1%

---

# Sincronização de campanha personalizada {#custom-campaign-sync}

Hoje, com o instalado [!DNL Marketo Measure] você pode indicar quais campanhas incluir como um ponto de contato elegível. Há vários obstáculos para isso como existia anteriormente. Quando a variável [!DNL Marketo Measure] estiver instalado no CRM, poderá demorar algum tempo para ser aprovado pela equipe de segurança. Além disso, há uma falta de flexibilidade no uso de uma única lista de opções no objeto do Campaign. Com esse novo recurso, não é necessária uma instalação de pacote para começar a usar os registros do Campaign e dos Membros do Campaign. As regras podem ser criadas para definir exatamente quais registros podem ser criados para definir exatamente quais registros são elegíveis.

## Requisitos {#requirements}

* A sincronização do Campaign está disponível em todos os níveis
* Para importar dados, você ainda precisa conectar seu CRM ao [!DNL Marketo Measure] account

## Como funciona {#how-it-works}

1. Com permissões de AccountAdmin, você pode navegar até **[!UICONTROL Configurações]** > **[!UICONTROL Campanhas]** e consulte a interface de regras do Sync Campaign Members.
1. Clique em **+** ícone para começar a criar uma regra.

   ![](assets/1-1.png)

1. Você tem a opção de criar uma regra do [!UICONTROL Campaign] ou [!UICONTROL Membro da campanha] campos. Preencha o restante da regra com o Operator e o Value que se espera validar. No exemplo abaixo, estamos procurando uma Campanha específica pelo seu nome.

   ![](assets/2-1.png)

   >[!NOTE]
   >
   >Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas calculam em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa ou não em uma regra.

1. Escolha a Data do ponto de contato. A lista de datas possíveis aparecerá depois que você inserir uma chave `{` - em seguida, você poderá selecionar a data que deseja aplicar a todos os Pontos de contato criados a partir da regra.

   ![](assets/3-1.png)

   >[!NOTE]
   >
   >Se estiver usando regras de sincronização personalizadas do Campaign, [!DNL Marketo Measure] O não lerá nenhuma atualização que você tenha feito usando o botão Atualização em massa Data do ponto de contato.

1. Clique na marca de seleção e, em seguida, adicione regras adicionais para campanhas adicionais, conforme necessário.

   ![](assets/4-1.png)

   >[!NOTE]
   >
   >Agora que as regras são definidas junto com a Sincronização do CRM, as regras declaradas naturalmente começarão a entrar em conflito. Se optar por continuar usando a Sincronização de campanha personalizada _e_ No Tipo de Sincronização do CRM, é essencial criar regras para que seus Tipos de Sincronização do CRM não sejam ignorados.

   ![](assets/5-1.png)

   >[!NOTE]
   >
   >Se estiver pensando em interromper o usuário do [!UICONTROL Tipo de Sincronização do CRM], é ideal criar regras que não façam referência ao &quot;Tipo de sincronização&quot;, mas _ainda_ manter os Pontos de contato atuais do CRM. Dessa forma, as regras ainda funcionam se/quando essa alteração for feita.

Este é um exemplo do que isso pareceria, para que nenhum ponto de contato existente do CRM seja perdido:

## Validação {#validation}

Você pode verificar facilmente os registros de Pontos de contato do comprador e Pontos de contato de atribuição do comprador no Campaign para garantir que as regras estejam funcionando corretamente. Aqui está um BAT que [!DNL Marketo Measure] criado com a Data do ponto de contato dinâmico apropriada, extraída da Campanha. O campo Data de criação está na imagem abaixo dele.

![](assets/6-1.png)

## Testando {#testing}

1. O recurso de sincronização do Campaign vem com um recurso de teste para que você possa verificar se as regras criadas realmente se encaixam nos critérios do Campaign. Comece clicando no link [!UICONTROL Teste] botão. As regras devem ser salvas primeiro antes de você poder iniciar o teste.

   ![](assets/7-1.png)

   Um pop-up será exibido, onde você poderá inserir uma ID do Campaign (15 ou 18 caracteres do CRM) para testar. O objetivo é inserir a ID da campanha do CRM que você estava tentando sincronizar para garantir que corresponda à regra criada.

   ![](assets/8-1.png)

1. Depois de clicar em [!UICONTROL Teste], você verá o nome da campanha e o número de membros da campanha qualificados para pontos de contato. Abaixo, uma tabela mostrará todas as regras que correspondem à ID da campanha. Somente as correspondências serão exibidas.

   ![](assets/9.png)

1. Você também pode clicar na contagem de Membros para ver uma lista de Clientes potenciais e Contatos e suas Ids que fazem parte da qualificação da regra de campanha. Este é apenas um conjunto de amostras e exibirá até 50 para que você possa ter uma ideia de quais registros se qualificam.

   ![](assets/10.png)
