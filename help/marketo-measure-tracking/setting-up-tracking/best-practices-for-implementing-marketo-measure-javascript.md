---
description: Práticas recomendadas para a implementação do [!DNL Marketo Measure] JavaScript - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para implementação do  [!DNL Marketo Measure] JavaScript
exl-id: 0359ad27-81e8-4902-a23a-49a5646a44d0
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '375'
ht-degree: 2%

---

# Práticas recomendadas para implementação do [!DNL Marketo Measure]JavaScript {#best-practices-for-implementing-marketo-measure-javascript}

## Visão geral {#overview}

A variável [!DNL Marketo Measure] O JavaScript rastreia as interações de marketing digital dos visitantes da Web e é fundamental para o [!DNL Marketo Measure] capacidade de criar dados de Touchpoint online. Ter o [!DNL Marketo Measure] O JavaScript implantado de forma correta e abrangente em todo o(s) site(s) garantirá que os dados da sessão coletados produzam dados de ponto de contato precisos.

As incoerências na implantação do [!DNL Marketo Measure] O JavaScript causará quebras nos dados da sessão que podem resultar no seguinte:

* Atribuição de canal/subcanal incorreta
* Perda de dados de origem
* Altos níveis de tráfego direto incorreto
* Relatórios inconsistentes

[!DNL Marketo Measure] O JavaScript é uma peça fundamental do seu [!DNL Marketo Measure] e a chave para seu sucesso!

## Prática recomendada {#best-practice}

Quando se trata de implementar e gerenciar seus [!DNL Marketo Measure] JavaScript, lembre-se das seguintes práticas recomendadas.

* Confirme se todos os domínios estão listados na [!DNL Marketo Measure] account
   * Se você tiver dúvidas em relação aos domínios, entre em contato com o suporte
* Implante o JavaScript em TODAS as páginas.
   * Inserir o JavaScript em apenas determinadas páginas causará quebras nos dados da sessão, o que causará erros [!DNL Marketo Measure] dados
* Para um formulário no seu site do qual você não deseja criar pontos de contato, adicione o [!DNL Marketo Measure] Excluir script
   * Esse script de exclusões garantirá que o [!DNL Marketo Measure] os dados da sessão não serão interrompidos e que os dados de origem permanecerão em vigor
      * Exemplos de formulários comuns a serem suprimidos são:
         * Logons de clientes
         * Formulários de senha esquecida
         * Cancelar inscrição de formulários
         * Formulários de inscrição de carreira
* Consulte as seções &quot;Considerações adicionais&quot; e &quot;Forms para prestar atenção extra&quot; da Adição [!DNL Marketo Measure] O recurso de script listado abaixo para verificar se há cenários que precisam de manuseio especial

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Enquanto a configuração do [!DNL Marketo Measure] O JavaScript é coberto durante a implementação inicial. As alterações no seu site ou na equipe que o gerencia podem resultar em interrupções no [!DNL Marketo Measure] rastreamento. Recomendamos que você confirme a [!DNL Marketo Measure] O JavaScript é implantado de forma correta e abrangente uma vez por ano. Além disso, se sua organização tiver qualquer tipo de documentação de protocolo de alteração para o site, verifique se há uma parte explicando que [!DNL Marketo Measure] O JavaScript deve ser mantido/adicionado a todas as páginas novas.

Outros motivos para isso podem acionar uma revisão da configuração do JavaScript...

* Volume de negócios da sua equipe de marketing
* Alterações e atualizações na estrutura do site
* Migrações do site
* Alterações no domínio
* Aquisições de outras empresas e suas propriedades da Web
