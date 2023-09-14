
# Conhecimento em Ação

[Documento de especificação de requisitos](.github/files/requirements.md)  
[Documento de planejamento de sprints](.github/files/sprints.md)
## Índice 

- [Conhecimento em Ação](#conhecimento-em-ação)
  - [Índice](#índice)
  - [Introdução](#introdução)
  - [Parte comercial](#parte-comercial)
    - [Problemática](#problemática)
    - [Funcionalidades](#funcionalidades)
    - [Impactos sociais](#impactos-sociais)
    - [Business Model Canvas](#business-model-canvas)
  - [Parte técnica](#parte-técnica)
    - [Ferramentas obrigatórias](#ferramentas-obrigatórias)
    - [Requisitos funcionais e não-funcionais](#requisitos-funcionais-e-não-funcionais)
    - [Tecnologias](#tecnologias)
    - [Fatores utilizados do "The Twelve-Factor App"](#fatores-utilizados-do-the-twelve-factor-app)
  - [Capturas de telas do aplicativo](#capturas-de-telas-do-aplicativo)
  - [Rodando localmente](#rodando-localmente)
  - [Licença](#licença)

## Introdução
Projeto desenvolvido para a disciplina de Projeto de Sistemas do Curso de Ciência da Computação da Universidade Federal do Tocantins, Câmpus Palmas, 2023.2 com o objetivo de simular a criação de um produto que tenha impacto social e esteja atrelado à descaracterização de aparelhos de TVBOX.
## Premissas:
  1. Será gerada uma versão demo do projeto nas datas: 18/09/2023, 16/10/2023 e 13/11/2023;
  2. Faremos uma apresentação comercial e técnica do projeto nas datas: 18/09/2023, 16/10/2023 e 13/11/2023;
  3. Faremos acompanhamento com o professor ao meio de cada sprint; e
  4. Abordaremos gamificação no contexto do ensino matemático.
## Restrições:
  1. O projeto deve ser entregue até o dia da apresentação final da disciplina 04/12/2023;
  2. Deverá fazer uso do equipamento TVBOX;
  3. O projeto deve ter impacto social;
  4. Deve ser utilizado a estratégia de ramificação GitFlow;
  5. Contemplar pelo menos 6 Twelve-factor app;
  6. Utilizar quadro KANBAM; e
  7. Usar Semantic Versioning para versionamento.

Diante disso, foi discutido o desenvolvimento da problemática relacionada à **aprendizagem matemática voltada para escolas de ensino fundamental no Brasil** por conta do **baixo índice de aprendizado nessa área**. Dessa forma, nossa solução busca **ajudar no desenvolvimento do ensino da matemática com auxílio de tecnologia**. Portanto, será desenvolvido um **aplicativo para sistemas Android cujos dispositivos alvos serão os aparelhos de TVBOX**.

## Parte comercial
Descrição comercial do projeto, com a utilização de *Businness Model Canvas*.

### Problemática

Não é recente as críticas ao ensino público brasileiro, com o nível sempre abaixo, conforme pesquisa da UNESCO de 2019, as escolas municipais possuem infraestrutura precária e isso influencia os resultados escolares.
De acordo com essa pesquisa, a quantidade de escolas com infraestrutura geral em nível 1 e 2 somados representam 17,4% ao todo. Isto representa o total de escolas que não possuem um nível básico de infraestrutura, e consequentemente, de ensino.
Com esse nível de desigualdade, essas crianças dificilmente têm acesso à tecnologias e é claro, não conseguem ter os benefícios de um aprendizado atrelado à tecnologia em geral, que hoje em dia, é provado que jogos em educação auxiliam no processo de aprendizado.

Fontes: 
[Qualidade da infraestrutura  das escolas públicas do ensino fundamental no Brasil](https://unesdoc.unesco.org/ark:/48223/pf0000368757?posInSet=1&queryId=7990941a-c4d6-47cc-94a7-f163404e5ce8)

### Funcionalidades

Nesta seção, discutiremos as funcionalidades do projeto desenvolvido. As funcionalidades do projeto estão relacionadas à criação de um aplicativo para sistemas Android, destinado aos aparelhos de TVBOX, com o objetivo de melhorar o ensino da matemática nas escolas de ensino fundamental no Brasil. Algumas das principais funcionalidades incluem:

* **Conteúdo Educativo:** O aplicativo oferecerá conteúdo educativo relacionado à matemática, adaptado para o ensino fundamental, com lições interativas e recursos visuais para tornar o aprendizado mais envolvente.  
* **Jogos Educativos:** Serão incorporados jogos educativos que utilizam a tecnologia para tornar o aprendizado da matemática mais divertido e eficaz.  
* **Acompanhamento de Desempenho:** Os professores e alunos poderão acompanhar o progresso do aprendizado por meio do aplicativo, com relatórios de desempenho e estatísticas.
* **Interface Amigável:** O aplicativo terá uma interface intuitiva e amigável, adequada para crianças e professores.  
* **Recursos de Personalização:** Os alunos poderão personalizar suas experiências de aprendizado, escolhendo tópicos específicos ou níveis de dificuldade.  
* **Integração com TVBOX:** O aplicativo será projetado para funcionar perfeitamente nos aparelhos de TVBOX, proporcionando uma experiência de ensino de matemática em uma tela maior.  

### Impactos sociais

Nesta seção, abordaremos os impactos sociais esperados do projeto, considerando a problemática do ensino de matemática no ensino fundamental no Brasil e como o aplicativo proposto pode contribuir para mitigar esses problemas. Alguns dos impactos sociais incluem:

* **Melhorias na Educação:** O projeto tem o potencial de melhorar significativamente o ensino de matemática nas escolas de ensino fundamental, ajudando a preencher a lacuna de aprendizado nessa área.  
* **Acesso à Tecnologia:** O aplicativo proporcionará às crianças de escolas com infraestrutura precária acesso a tecnologias educacionais avançadas, promovendo a inclusão digital.  
* **Aprendizado Mais Divertido**: A inclusão de jogos educativos tornará o processo de aprendizado da matemática mais divertido e envolvente, incentivando os alunos a se interessarem mais pela disciplina.  
* **Monitoramento do Desempenho:** Os relatórios de desempenho permitirão que professores e pais acompanhem o progresso dos alunos, identificando áreas de melhoria e intervenção precoce.  
* **Redução da Desigualdade Educacional:** Ao atender escolas com infraestrutura precária, o projeto contribuirá para reduzir a desigualdade educacional no Brasil, garantindo que mais crianças tenham acesso a recursos educacionais de qualidade.  
* **Uso de Tecnologia como Ferramenta de Ensino:** Demonstrará como a tecnologia pode ser uma poderosa ferramenta de ensino, influenciando positivamente as práticas educacionais.  

### Business Model Canvas
![Business model canva (conhecimento em ação)](https://github.com/erarich/projeto_de_sistemas/blob/develop/.github/files/image.png)

## Parte técnica

Descrição técnica do projeto, com as ferramentas e conceitos que serão utilizados.

### Ferramentas obrigatórias

Como este projeto trata-se de uma atividade para a disciplina de Projeto de Sistemas, algumas ferramentas e conceitos são obrigatórios para a realização do projeto.
Lista geral de "pré-requisitos para o escopo e desenvolvimento do projeto":
* O produto precisa gerar algum **Impacto Social**;
* O produto deve **contemplar pelo menos 6 "The twelve-factor app"**;
* Deve ser utilizado:
 * **GitFlow**;
 * **Semantic Versioning**;
 * **Code Review**;
 * **Kanban**;
* **Apresentação Técnica e Comercial**;

### Requisitos funcionais e não-funcionais

Os requisitos do projeto estão descritos no arquivo *requirements.md* na pasta *files* da pasta *.github*.  
[Requisitos](https://github.com/erarich/projeto_de_sistemas/blob/develop/.github/files/requirements.md)

### Tecnologias
* [Godot] (https://godotengine.org/)

### Fatores utilizados do "The Twelve-Factor App"

[The Twelve-Factor App](https://12factor.net/pt_br/)

A aplicação doze-fatores é uma metodologia para construir softwares-como-serviço que pode ser aplicada a aplicações escritas em qualquer linguagem de programação, e que utilizem qualquer combinação de serviços de suporte.
O projeto se baseará em:

**Código-base (Codebase)** *Uma base de código com rastreamento utilizando controle de revisão, muitos deploys.*

Criamos e gerenciamos o projeto por apenas um repositório, contendo neste toda sua especificação.

**Dependências (Dependencies):** *Declare e isole explicitamente as dependências.*

A resolução de dependências do projeto está descrita pelo arquivo *package.json*, vale ressaltar que as dependências são isoladas nativamente pelo próprio Nodejs.
  
**Configurações (Config):** *Armazene as configurações no ambiente.* 

Estamos utilizado variáveis de ambiente para configuração do projeto, fazendo uso também do gerenciamento próprio do GitHub Secrets.

**Construa, lançe, execute (Build, release, run):** *Separe estritamente os estágios de construção e execução.*

O processo de desenvolvimento contará com estratégias definidas para as etapas de *build*, *releas*e e *run* do aplicativo utilizando GitHub Actions.

**Dev/Prod semelhantes (Dev/Prod Parity):** *Mantenha o desenvolvimento, homologação e produção o mais similares possível.*

Os ambientes de desenvolvimento, teste e produção estarão separados pela estratégia de ramificação do projeto (GitFlow).

**Logs (Logs):** *Trate logs como fluxos de eventos.*

Faremos uso de *logs* para rastreios e acompanhamento em etapas de desenvolvimento, bem como em estruturação do projeto no geral.

## TVbox
  Os aparelhos de TVBOX são aparelhos pequenos que funcionam como mini-computadores que possuem o intuito de estabelecer para o usuário final a experiência de uma Smart TV, isto é, um aparelho de televisão que possui diversas funcionalidades de computadores pessoais e smartphones. Apesar do propósito citado, o uso só se torna ilegal quando ela permite acessar canais e outros conteúdos restritos por assinatura de forma clandestina [1](https://www.oficinadanet.com.br/iptv/44670-usar-tv-box-ilegal), caracterizando crime de pirataria.  
Além de ser tecnicamente um crime, utilizar uma TV Box pirata pode trazer outros riscos ao usuário. A própria Anatel chegou a analisar alguns modelos TV Box pirata e eles concluíram que o usuário pode colocar em risco sua própria segurança e privacidade.  
Segundo análises da Anatel, foram encontrados softwares maliciosos, chamados de malwares, capazes de controlar o dispositivo remotamente sem autorização; acessar indevidamente dados e informações dos usuários — incluindo registros financeiros e arquivos de fotos; possibilitar o acesso a dados de dispositivos que compartilham a mesma rede de internet. [2](https://canaltech.com.br/governo/o-que-caracteriza-tv-box-e-ilegal-239790/)  
Diante de tal situação, foram doados para o projeto EPIC, do curso de Ciência da Computação, vários aparelhos de TVBOX, sendo que a maioria da remessa são do modelo MXQ PRO 4K, com a finalidade de estudantes do curso participarem no processo de descaracterização, Esse processo visa alterar o sistema interno dos aparelhos de forma a torná-los adequados para uso pelo público em geral, sem possibilitar atividades ilegais ou tornar mais difícil o acesso a conteúdo pirata.  
Este projeto é uma iniciativa importante que busca promover o uso responsável de dispositivos de TV Box e resguardar os interesses legais e a segurança dos usuários. A conscientização sobre os riscos associados ao uso de TV Boxes piratas e a promoção de alternativas legais são passos cruciais na luta contra a pirataria e na proteção da privacidade e segurança dos consumidores.


## Capturas de telas do aplicativo

## Rodando localmente

Clone o projeto

```bash
  git clone https://github.com/erarich/projeto_de_sistemas.git
```
Instale o Godot
```bash
  https://godotengine.org/download/linux/
```

## Licença

[Sem licença/Domínio público](https://choosealicense.com/licenses/#unlicense). Você pode usar o aplicativo como desejar.



