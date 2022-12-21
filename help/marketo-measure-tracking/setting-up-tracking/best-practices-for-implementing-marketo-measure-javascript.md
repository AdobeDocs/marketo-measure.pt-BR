---
description: Práticas recomendadas para implementação [!DNL Marketo Measure] JavaScript - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para implementação [!DNL Marketo Measure] JavaScript
exl-id: 0359ad27-81e8-4902-a23a-49a5646a44d0
source-git-commit: cf144eb4bc9282ae6a260acd3735f24644292a19
workflow-type: tm+mt
source-wordcount: '375'
ht-degree: 0%

---

# Práticas recomendadas para implementação [!DNL Marketo Measure] JavaScript {#best-practices-for-implementing-marketo-measure-javascript}

## Visão geral {#overview}

O [!DNL Marketo Measure] O JavaScript rastreia as interações de marketing digital dos visitantes da Web e é fundamental para a variável [!DNL Marketo Measure] capacidade de criar dados de pontos de contato online. Tendo em conta [!DNL Marketo Measure] O JavaScript implantado de forma correta e abrangente em todos os sites garantirá que os dados da sessão coletados produzam dados precisos do ponto de contato.

Inconsistências na implantação do [!DNL Marketo Measure] O JavaScript causará quebras nos dados da sessão, o que pode resultar no seguinte:

* Atribuição de canal/subcanal incorreta
* Perda de dados de origem
* Níveis elevados de tráfego direto incorreto
* Relatórios inconsistentes

[!DNL Marketo Measure] O JavaScript é uma peça fundamental de seu [!DNL Marketo Measure] e a chave para o seu sucesso!

## Prática recomendada {#best-practice}

Quando se trata de implementar e gerenciar seu [!DNL Marketo Measure] JavaScript, lembre-se das seguintes práticas recomendadas.

* Confirme se todos os domínios estão listados em [!DNL Marketo Measure] account
   * Em caso de preocupações relacionadas aos seus domínios, entre em contato com o Suporte
* Implante o JavaScript em TODAS as páginas.
   * Colocar o JavaScript em apenas determinadas páginas causará quebras nos dados da sessão, o que causará incorreções [!DNL Marketo Measure] dados
* Para um formulário no seu site do qual você não deseja criar pontos de contato, adicione o [!DNL Marketo Measure] Excluir script
   * Esse script de exclusão garantirá que a variável [!DNL Marketo Measure] os dados da sessão não serão interrompidos e os dados de origem permanecerão em vigor
      * Exemplos de formulários comuns a serem suprimidos são:
         * Logons do cliente
         * Esqueceu os formulários de senha
         * Cancelar inscrição nos formulários
         * Formulários de candidatura profissional
* Revise as seções &quot;Considerações adicionais&quot; e &quot;Forms para prestar atenção extra&quot; em Adicionar [!DNL Marketo Measure] Recurso de script listado abaixo para verificar se há cenários que precisam de tratamento especial

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Enquanto a configuração do [!DNL Marketo Measure] O JavaScript é abordado durante a implementação inicial, as alterações no seu site ou na equipe que o gerencia podem resultar em interrupções no [!DNL Marketo Measure] rastreamento. Recomendamos que você confirme a [!DNL Marketo Measure] O JavaScript é implantado de forma correta e abrangente uma vez por ano. Além disso, se sua organização tiver qualquer tipo de documentação de protocolo de alteração para o site, verifique se há uma parte explicando que [!DNL Marketo Measure] O JavaScript deve ser retido/adicionado a todas as novas páginas.

Outros motivos para isso podem acionar uma análise da configuração do JavaScript incluem...

* Volume de negócios em sua equipe de marketing
* Alterações e atualizações na estrutura do site
* Migrações de site
* Alterações no seu domínio
* Aquisições de outras empresas e suas propriedades da Web
