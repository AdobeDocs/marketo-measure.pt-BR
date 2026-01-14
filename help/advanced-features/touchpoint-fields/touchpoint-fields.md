---
description: Orientação de campos de ponto de contato para usuários do Marketo Measure
title: Campos do Touchpoint
exl-id: d6c2bd60-5341-4a52-939a-942afc093306
feature: Touchpoints
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '1975'
ht-degree: 0%

---

# Campos do Touchpoint {#touchpoint-fields}

Historicamente, quando os clientes embarcaram com o [!DNL Marketo Measure] e, no caso de não termos uma integração direta de marcação, nossa equipe de Sucesso do cliente instrui nossos clientes sobre como marcar adequadamente suas páginas de aterrissagem para que eles utilizem o formato UTM correto e possamos resolver seus anúncios. Alguns desses clientes não usam UTMs, mas usam seus próprios parâmetros de marcação, o que significa que pode ser muito demorado editar todas as páginas de aterrissagem em todas as redes de anúncios com uma nova estrutura de marcação imposta pelo [!DNL Marketo Measure]. Para se adaptar à estrutura de marcação, agora aceitamos parâmetros personalizados que podem ser mapeados com nossas definições de regras. O objetivo é adaptar ao uso dos parâmetros de rastreamento personalizados pelos clientes para que não seja necessário exigir que eles alterem a estrutura do URL.

>[!AVAILABILITY]
>
>Disponível agora com Segmentação completa no nível 2 e no nível 3.

>[!NOTE]
>
>Este é um recurso avançado e deve ser configurado apenas pelos Serviços profissionais.

## Ativação do recurso {#enabling-the-feature}

No menu Configurações de [!DNL Marketo Measure], navegue até a página Campos de ponto de contato. A partir daí, você pode habilitar o recurso selecionando **Sim** em **Habilitar Campos Calculados**. Depois que o recurso for ativado, você poderá criar Campos de ponto de contato.

![](assets/touchpoint-fields-1.png)

## Como {#how-to}

Para criar um campo calculado, lembre-se de que há três ações diferentes que um usuário pode realizar: extrai, mapeia para e concatena. Eles também são conhecidos como operadores para definir um campo calculado.

Extrações

O operador [!UICONTROL extrai] o valor de um campo de outro local, como: um campo de Campanha, campo de cliente potencial ou, em um caso de uso mais avançado, [extrair parâmetros personalizados da página de aterrissagem](https://docs.google.com/document/d/1NRViyCsXvPKbCTfGW32Yi2vWBjMDRF7bzkzKj9s2DDA/edit?ts=5e20b482#heading=h.xxwtissvw4){target="_blank"}. Em seguida, ele o coloca em um Campo de Touchpoint (Consulte [Mapeia Para Exemplo](https://docs.google.com/document/d/1NRViyCsXvPKbCTfGW32Yi2vWBjMDRF7bzkzKj9s2DDA/edit?ts=5e20b482#heading=h.xxwtissvw4){target="_blank"} #2).

**Exemplo #1**

Há um campo personalizado no Contato, campaign_source_c, que o cliente deseja colocar no Ponto de contato para fins de relatório. Você pode definir uma regra para criar um Campo calculado chamado &quot;Source de campanha&quot; e soltar o valor nesse campo.

Meta: use o valor de um campo personalizado e coloque-o no objeto Touchpoint para facilitar a geração de relatórios.

* Crie um campo calculado e rotule-o como &quot;Campaign Source&quot;
* Defina a regra começando pela pesquisa do campo Contact.Campaign_Source_c
* Use o operador &quot;extracts&quot; já que precisamos obter o valor do parâmetro
* Para extrair a cadeia de caracteres completa do campo, usaremos a expressão &quot;(.&#42;)&quot;

   * **(** marca o início da extração
   * **)** marca o fim da extração
   * **.&#42;** nos diz que estamos extraindo a sequência de caracteres inteira

![](assets/touchpoint-fields-10.png)

**Exemplo #2**

Um caso de uso comum que esse recurso permite é obter valores de parâmetros personalizados de uma string de URL. Isso é útil se você usar parâmetros diferentes de UTMs, mas quiser analisar os valores em campos de ponto de contato.

**Link:** `https://www.adobe.com/blog/marketing-revenue-reporting-overview?promo=5OFF` ou `https://www.adobe.com/blog/marketing-revenue-reporting-overview?promo=25OFF`.\
**Meta:** crie um campo personalizado chamado &quot;Código de Desconto&quot; e solte o valor &quot;5OFF&quot; ou &quot;25OFF&quot;, qualquer valor que for transmitido.

* Crie um campo calculado e rotule-o como &quot;Código de desconto&quot;
* Defina a regra começando pela pesquisa do campo Touchpoint.Session.LandingPage
* Use o operador &quot;extracts&quot; já que precisamos obter o valor do parâmetro
* Para extrair o valor da promoção, definiremos o valor como &quot;promo=(\w+)&quot;

   * **(** marca o início da extração
   * **)** marca o fim da extração
   * **\w** informa que estamos extraindo uma &quot;palavra&quot; que inclui 0-9
   * **+** extrairá o valor completo do parâmetro sem limite de caracteres
   * Observe que você está usando uma barra e não uma barra invertida

![](assets/touchpoint-fields-11.png)

**Exemplo #3**

Vamos tentar um exemplo semelhante em que extraímos um código de rastreamento como: `https://www.adobe.com/blog/marketing-revenue-reporting-overview?cid=123456`.

**Meta:** Crie um Campo Calculado e rotule-o como &quot;Adobe Campaign Id&quot; com o valor do parâmetro cid.

* Crie um campo calculado e rotule-o como &quot;Adobe Campaign Id&quot;
* Defina a regra começando pela pesquisa do campo Touchpoint.Session.LandingPage
* Use o operador &quot;extracts&quot; já que precisamos obter o valor do parâmetro
* Para extrair o valor &quot;123456&quot;, definiremos o valor como &quot;cid=(\d{6})&quot;

   * **(** marca o início da extração
   * **)** marca o fim da extração
   * **\d** informa que estamos extraindo um &quot;dígito&quot;
   * **{6}** é o número de caracteres que estamos extraindo

![](assets/touchpoint-fields-12.png)

**Exemplo #4**

À medida que as páginas de aterrissagem se tornam mais complicadas e você tem vários parâmetros de rastreamento, pode ser necessário criar vários campos de ponto de contato e extrair valores várias vezes, como:
`https://www.adobe.com/blog/marketing-revenue-reporting-overview?trackID=123456&country=US&campaign_ID=7890`.

**Meta:** criar vários Campos Calculados para &quot;País de Destino&quot; e &quot;ID de Campanha Personalizada&quot; com os respectivos valores dos parâmetros.

* Crie um campo calculado e rotule-o como &quot;País de destino&quot;
* Defina a regra começando pela pesquisa do campo Touchpoint.Session.LandingPage
* Use o operador &quot;extracts&quot; já que precisamos obter o valor do parâmetro
* Para extrair o valor &quot;US&quot;, definiremos o valor como &quot;country=(\w{2})&quot;

   * **(** marca o início da extração
   * **)** marca o fim da extração
   * **\w** informa que estamos extraindo uma &quot;palavra&quot;
   * **{2}** é o número de caracteres que estamos extraindo

* Crie um campo calculado e rotule-o como &quot;ID de campanha personalizada&quot;
* Defina a regra começando pela pesquisa do campo Touchpoint.Session.LandingPage
* Use o operador &quot;extracts&quot; já que precisamos obter o valor do parâmetro
* Para extrair o valor &quot;123456&quot;, definiremos o valor como &quot;campaign_ID=(\d{6})&quot;

   * **(** marca o início da extração
   * **)** marca o fim da extração
   * **\d** informa que estamos extraindo um &quot;dígito&quot;
   * **{6}** é o número de caracteres que estamos extraindo

![](assets/touchpoint-fields-13.png)

**Mapeia para**

O operador [!UICONTROL maps to] cria uma tabela de valores que precisam ser traduzidos ou classificados em outro valor. Normalmente, isso assume a forma de um valor principal, em que um código representa um nome amigável e precisa ser mapeado para esse nome amigável.

**Exemplo #1**

Há campanhas criadas para uma &quot;Promoção de fim de verão&quot; e &quot;Promoção da Black Friday&quot; que são executadas em vários canais. Você deseja criar um Campo calculado chamado &quot;Iniciativa&quot; e mapear quaisquer pontos de contato com uma &quot;Promoção de fim de verão&quot; ou &quot;Promoção da Black Friday&quot; para um valor de Iniciativa, como &quot;Promoções&quot;, além de outros valores possíveis.

![](assets/touchpoint-fields-2.png)

**Exemplo #2**

Agora que aprendemos a extrair e mapear para campos, vamos combinar essas ações para primeiro extrair um valor de um parâmetro e, em seguida, mapeá-lo para um nome amigável que faça um pouco mais de sentido. Vamos começar com esta landing page: `https://www.adobe.com/blog/marketing-revenue-reporting-overview?BZ=04-01-09-03-10`.

**Meta:** criar vários Campos Calculados, em que o primeiro número é mapeado para uma Região, o segundo é mapeado para um Produto, o terceiro é mapeado para uma Iniciativa, o quarto é mapeado para uma Pessoa e o quinto é mapeado para uma Plataforma de Mídia. Em seguida, mapeie o valor numérico para um &quot;nome amigável&quot;.

* Crie um campo calculado e rotule-o como &quot;Região&quot;
* Defina a regra começando pela pesquisa do campo Touchpoint.Session.LandingPage
* Use o operador &quot;[!UICONTROL extracts]&quot; já que precisamos extrair o valor do parâmetro
* Para extrair o valor &quot;04&quot;, definiremos o valor como &quot;BZ=(\d{2})-\d{2}-\d{2}-\d{2}-\d{2}&quot;

   * **(** marca o início da extração

      * Observe que, como estamos extraindo apenas o 4, somente os primeiros dígitos têm o parêntese de abertura
   * **)** marca o fim da extração

      * Observe que, como estamos extraindo apenas o 4, somente os primeiros dígitos têm o parêntese fechado
   * **\d** informa que estamos extraindo um &quot;dígito&quot;
   * **{2}** é o número de caracteres que estamos extraindo



* Clique em [!UICONTROL Salvar]. Você deve salvar seu novo campo antes que ele possa estar disponível para uso na próxima regra!
* Em seguida, devemos mapear todos os valores possíveis para os primeiros dígitos para seus nomes amigáveis
* Crie um campo calculado e rotule-o como &quot;Region_Name&quot;
* Defina a regra começando pela pesquisa do campo extraído. Neste caso, [!DNL Touchpoint.Region]
* Use o operador &quot;[!UICONTROL maps to]&quot;, pois queremos criar um mapeamento para cada número para seu valor
* Uma tabela é exibida para listar cada mapeamento. No final, será algo assim:
* Com base no mapeamento e no URL acima, o &quot;Region_Value&quot; para um ponto de contato com essa página inicial seria &quot;EMEA&quot;
* Repetir a extração e o mapeamento dos 4 conjuntos de dígitos restantes

   * Para extrair o 01, você definiria o valor como &quot;BZ=\d{2}-**(\d{2})**-\d{2}-\d{2}-\d{2}&quot;
   * Para extrair o 09, você definiria o valor como &quot;BZ=\d{2}-\d{2}-**(\d{2})**-\d{2}-\d{2}&quot;
   * Para extrair o 03, você definiria o valor como &quot;BZ=\d{2}-\d{2}-\d{2}-**(\d{2})**-\d{2}&quot;
   * Para extrair o 10, você definiria o valor como &quot;BZ=\d{2}-\d{2}-\d{2}-\d{2}-**(\d{2})**&quot;

![](assets/touchpoint-fields-3.png)

**Concatenadas**

O operador [!UICONTROL concatenates] combina valores de vários campos em um único campo. Isso é útil para criar um valor personalizado que puxa os dados em vários campos para fazer

**Exemplo #1**

Há campos separados no objeto Oportunidade para Segmento_c e Grau_c que o usuário deseja combinar em um único campo no objeto Ponto de contato para fins de relatório. Ao concatenar os campos, você verá valores como Enterprise_A ou Mid-Market_B.

![](assets/touchpoint-fields-4.png)

## Campos e segmentos do ponto de contato {#touchpoint-fields-and-segments}

Agora que os valores do URL foram analisados e existem no ponto de contato, você verá os novos campos sempre que os campos de ponto de contato forem usados, como criar segmentos ou definir regras de exclusão de ponto de contato.

A capacidade de criar segmentos usando campos de Touchpoint está disponível com esta versão do produto. Não foi possível criar segmentos com campos de Touchpoint anteriores.

![](assets/touchpoint-fields-5.png)

Para facilitar a criação de segmentos, agora é possível criar segmentos dinâmicos a partir dos Campos de ponto de contato que foram criados. Por exemplo, se você criou um Campo de ponto de contato que analisou uma região geográfica, em vez de criar um segmento para cada região possível, é possível configurar um segmento, e criaremos segmentos para cada instância em que um novo valor for exibido. Isso é extremamente útil se um atributo como código postal precisava ser analisado e usado como um segmento!

Sua configuração seria semelhante à captura de tela abaixo. O Nome do segmento puxa dinamicamente o valor Campo de ponto de contato usando as chaves para pesquisar o campo.

![](assets/touchpoint-fields-6.png)

A regra faz referência ao mesmo Campo de ponto de contato e pesquisa valores que &quot;não são iguais a nulo&quot;.

![](assets/touchpoint-fields-7.png)

## Perguntas frequentes {#faq}

**Há um número máximo de Campos de Pontos de Contato que podemos criar?**

Há um limite de 100 campos.

**Não vejo meu novo Campo de Ponto de Contato que acabei de criar na lista de opções. Onde ele está?**

Não se esqueça de salvar suas regras depois de criá-las. Se você não visualizar o novo campo, verifique se salvou. Você deve salvar o novo campo antes que ele possa estar disponível para uso na próxima regra.

>[!NOTE]
>
>Devido ao nível de complexidade, um Campo de ponto de contato que usa o operador &quot;mapeia para&quot; não está disponível para ser usado em outro Campo de ponto de contato.

**Que expressão devo usar para extrair vários parâmetros de uma única página de aterrissagem?**

Como no Exemplo de Extração #4, é necessário criar vários campos para extrair cada um dos parâmetros. Portanto, se você tiver cinco valores diferentes, criará cinco Campos de ponto de contato para extrair cada um deles.

**Por que não vejo meus novos campos no esquema [!DNL Marketo Measure]?**

Há trabalho adicional necessário para expor os novos campos no esquema do Data Warehouse [!DNL Marketo Measure]. No momento, os campos são expostos por meio de configurações para que você possa usar os Campos de ponto de contato na criação de Segmentos ou na criação de regras de Exclusão de ponto de contato.

**Como posso validar se minha expressão de extração é válida e está obtendo o valor correto?**

Há uma ferramenta online ([[!DNL https]://regex101.com/](https://regex101.com/){target="_blank"}) que você pode executar e testar a expressão. A expressão aparece em verde se for válida ou em vermelho se for inválida. Além disso, a caixa [!UICONTROL explicação] na parte superior direita é útil e informa o que você está extraindo.

![](assets/touchpoint-fields-8.png)

![](assets/touchpoint-fields-9.png)
