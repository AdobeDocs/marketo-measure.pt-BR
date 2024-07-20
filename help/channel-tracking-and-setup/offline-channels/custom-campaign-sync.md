---
unique-page-id: 18874588
description: Sincronização de Campanha Personalizada - [!DNL Marketo Measure]
title: Sincronização de campanha personalizada
exl-id: 66f0e4e3-c1b6-443e-8ffa-06b67862b855
feature: Channels
source-git-commit: 4787f765348da71bc149c997470ce678ba498772
workflow-type: tm+mt
source-wordcount: '659'
ht-degree: 1%

---

# Sincronização de campanha personalizada {#custom-campaign-sync}

Hoje, com o pacote [!DNL Marketo Measure] instalado, você pode indicar quais Campanhas incluir como ponto de contato qualificado. Há vários obstáculos para isso como existia anteriormente. Depois que o pacote [!DNL Marketo Measure] for instalado no CRM, ele poderá demorar para ser aprovado pela equipe de segurança. Além disso, há uma falta de flexibilidade no uso de uma única lista de opções no objeto do Campaign. Com esse novo recurso, não é necessária uma instalação de pacote para começar a usar os registros do Campaign e dos Membros do Campaign. As regras podem ser criadas para definir exatamente quais registros podem ser criados para definir exatamente quais registros são elegíveis.

## Requisitos {#requirements}

* A sincronização do Campaign está disponível em todos os níveis
* Para importar dados, você ainda precisa conectar seu CRM à sua conta do [!DNL Marketo Measure]

## Como funciona {#how-it-works}

1. Com permissões de AccountAdmin, você pode navegar até **[!UICONTROL Configurações]** > **[!UICONTROL Campanhas]** e ver a interface de regras Sincronizar Membros da Campanha.
1. Clique no ícone **+** para começar a criar uma regra.

   ![](assets/1-1.png)

1. Você tem a opção de criar uma regra dos campos [!UICONTROL Campanha] ou [!UICONTROL Membro da campanha]. Preencha o restante da regra com o Operator e o Value que se espera validar. No exemplo abaixo, estamos procurando uma Campanha específica pelo seu nome.

   ![](assets/2-1.png)

   >[!NOTE]
   >
   >Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas são calculadas em segundo plano e não modificam um registro, o [!DNL Marketo Measure] não pode detectar se um registro se encaixa ou não em uma regra.

1. Escolha a Data do ponto de contato. A lista de datas possíveis será exibida depois que você inserir uma chave `{` - em seguida, será possível selecionar a data que deseja aplicar a todos os Pontos de contato criados a partir da regra.

   ![](assets/3-1.png)

   >[!NOTE]
   >
   >Se você estiver usando as regras de Sincronização de Campanha Personalizadas, o [!DNL Marketo Measure] não lerá nenhuma atualização feita usando o botão Atualização em Massa da Data do Ponto de Contato.

1. Clique na marca de seleção e, em seguida, adicione regras adicionais para campanhas adicionais, conforme necessário.

   ![](assets/4-1.png)

   >[!NOTE]
   >
   >Agora que as regras são definidas junto com a Sincronização do CRM, as regras declaradas naturalmente começarão a entrar em conflito. Se você optar por continuar usando o Campaign Sync _e_ personalizado do Tipo de sincronização do CRM, é importante criar regras para que seus Tipos de sincronização do CRM não sejam ignorados.

   ![](assets/5-1.png)

   >[!NOTE]
   >
   >Se você estiver pensando em parar o usuário do [!UICONTROL Tipo de Sincronização do CRM], é ideal criar regras que não façam referência ao &quot;Tipo de Sincronização&quot;, mas _ainda_ mantenha os pontos de contato atuais do CRM. Dessa forma, as regras ainda funcionam se/quando essa alteração for feita.

Este é um exemplo do que isso pareceria, para que nenhum ponto de contato existente do CRM seja perdido:

## Validação {#validation}

Você pode verificar facilmente os pontos de contato do comprador e os registros de Buyer Attribution Touchpoint no Campaign para garantir que as regras estejam funcionando corretamente. Este é um BAT criado por [!DNL Marketo Measure] com a data apropriada do ponto de contato dinâmico, extraído da Campanha. O campo Data de criação está na imagem abaixo dele.

![](assets/6-1.png)

## Testando {#testing}

1. O recurso de sincronização do Campaign vem com um recurso de teste para que você possa verificar se as regras criadas realmente se encaixam nos critérios do Campaign. Comece clicando no botão [!UICONTROL Testar]. As regras devem ser salvas primeiro antes de você poder iniciar o teste.

   ![](assets/7-1.png)

   Um pop-up será exibido, onde você poderá inserir uma ID do Campaign (15 ou 18 caracteres do CRM) para testar. O objetivo é inserir a ID da campanha do CRM que você estava tentando sincronizar para garantir que corresponda à regra criada.

   ![](assets/8-1.png)

1. Depois de clicar em [!UICONTROL Testar], você verá o nome da Campanha e o número de Membros da Campanha qualificados para pontos de contato. Abaixo, uma tabela mostrará todas as regras que correspondem à ID da campanha. Somente as correspondências serão exibidas.

   ![](assets/9.png)

1. Você também pode clicar na contagem de Membros para ver uma lista de Clientes potenciais e Contatos e suas Ids que fazem parte da qualificação de regra da campanha. Este é apenas um conjunto de amostras e exibirá até 50 para que você possa ter uma ideia de quais registros se qualificam.

   ![](assets/10.png)
