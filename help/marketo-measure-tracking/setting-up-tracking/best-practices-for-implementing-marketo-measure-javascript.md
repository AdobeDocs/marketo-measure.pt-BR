---
description: Práticas recomendadas para implementação do JavaScript do  [!DNL Marketo Measure]  -  [!DNL Marketo Measure]
title: Práticas recomendadas para implementação do JavaScript do  [!DNL Marketo Measure]
exl-id: 0359ad27-81e8-4902-a23a-49a5646a44d0
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '372'
ht-degree: 100%

---

# Práticas recomendadas para implementação do JavaScript do [!DNL Marketo Measure] {#best-practices-for-implementing-marketo-measure-javascript}

## Visão geral {#overview}

O JavaScript do [!DNL Marketo Measure] rastreia as interações de marketing digital dos visitantes da Web e é fundamental para a capacidade do [!DNL Marketo Measure] de criar dados de ponto de contato online. Ter o JavaScript do [!DNL Marketo Measure] implantado de forma correta e abrangente em todo o site garantirá que os dados da sessão coletados produzam dados de pontos de contato precisos.

As inconsistências na implantação do JavaScript do [!DNL Marketo Measure] causará problemas nos dados da sessão que podem resultar no seguinte:

* Atribuição de canal/subcanal incorreta
* Perda dos dados de origem
* Altos níveis de tráfego direto incorreto
* Relatórios inconsistentes

O JavaScript do [!DNL Marketo Measure] é uma peça fundamental da sua conta do [!DNL Marketo Measure] e a chave para seu sucesso.

## Prática recomendada {#best-practice}

Quando implementar e gerenciar o seu JavaScript do [!DNL Marketo Measure], lembre-se das seguintes práticas recomendadas.

* Certifique-se de que todos os domínios estejam listados na sua conta do [!DNL Marketo Measure]
   * Se você tiver dúvidas em relação aos domínios, entre em contato com o suporte
* Implante o JavaScript em TODAS as páginas.
   * Inserir o JavaScript apenas em determinadas páginas causará problemas nos dados da sessão, o que levará a dados incorretos do [!DNL Marketo Measure] 
* Para um formulário no seu site do qual você não deseja criar Pontos de contato, adicione o script Excluir do [!DNL Marketo Measure]
   * Esse script de exclusão garantirá que os dados da sessão do [!DNL Marketo Measure] não serão interrompidos e que os dados de origem permanecerão no lugar
      * Exemplos de formulários comuns a serem suprimidos são:
         * Logons de clientes
         * Formulários esquecimento de senha
         * Formulários de cancelamento de inscrição
         * Formulários de candidatura a vagas
* Consulte as seções “Considerações adicionais” e “Formulários que precisam de uma atenção maior” do recurso Adição do recurso de script do [!DNL Marketo Measure] listado abaixo para verificar se há cenários que precisam de atenção especial

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Enquanto a configuração do JavaScript do [!DNL Marketo Measure] é coberta durante a implementação inicial, as alterações no seu site ou na equipe que o gerencia podem resultar em interrupções no rastreamento do [!DNL Marketo Measure]. Recomendamos que você confirme se o JavaScript em [!DNL Marketo Measure] foi implantado de forma correta e abrangente uma vez por ano. Além disso, se sua organização tiver qualquer tipo de documentação de protocolo de alteração para o site, certifique-se de incluir uma parte explicando que o JavaScript do [!DNL Marketo Measure] deve ser mantido/adicionado a todas as páginas novas.

Outros motivos que podem acionar uma revisão da sua configuração do JavaScript incluem...

* Rotatividade de sua equipe de marketing
* Alterações e atualizações na estrutura do site
* Migrações do site
* Alterações no domínio
* Aquisições de outras empresas e suas propriedades na Web
