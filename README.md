
# Conhecimento em Ação

Documento em inglês: https://github.com/erarich/projeto_de_sistemas/blob/develop/READMEeng.md

## Índice 

* [Introdução](#introdução)
* [Parte comercial](#parte-comercial)
  * [Problemática](#problemática)
  * [Funcionalidades](#funcionalidades)
  * [Impactos sociais](#impactos-sociais)
  * [Business Model Canvas](#business-model-canvas)
* [Parte técnica](#parte-técnica)
  * [Ferramentas obrigatórias](#ferramentas-obrigatórias)
  * [Requisitos funcionais e não-funcionais](#requisitos-funcionais-e-não-funcionais)
  * [Tecnologias](#tecnologias)
  * [Fatores utilizados do "The Twelve Factor App"](#fatores-utilizados-do-the-twelve-factor-app)
* [Capturas de telas do aplicativo](#capturas-de-telas-do-aplicativo)
* [Rodando localmente](#rodando-localmente)
* [Licença](#licença)


## Introdução
Projeto desenvolvido para a disciplina de Projeto de Sistemas do Curso de Ciência da Computação da Universidade Federal do Tocantins, Câmpus Palmas, 2023.2 com o objetivo de simular a criação de um produto que tenha impacto social e esteja atrelado à descaracterização de aparelhos de TVBOX.

Ademais, há como requisitos para o desenvolvimento o uso de alguns conceitos e ferramentas como:
1. Git Flow (metodologia de gerenciamento de ramificações para repositórios Git)
2. Versionamento Semântico (metodologia para controle de versões)
3. Revisão de Código
4. Metodologia Ágil Kanban
5. GitHub
6. Apresentação Técnica e Comercial
7. Business Model Canvas
8. “Os Doze Fatores”

Diante disso, foi discutido o desenvolvimento da problemática relacionada à **aprendizagem matemática voltada para escolas de ensino fundamental no Brasil** por conta do **baixo índice de aprendizado nessa área**. Dessa forma, nossa solução busca **ajudar no desenvolvimento do ensino da matemática com auxílio de tecnologia**. Portanto, será desenvolvido um **aplicativo para sistemas Android cujos dispositivos alvos serão os aparelhos de TVBOX**.

## Parte comercial
TODO(Descrição)

### Problemática

Não é recente as críticas ao ensino público brasileiro, com o nível sempre abaixo, conforme pesquisa da UNESCO de 2019, as escolas municipais possuem infraestrutura precária e isso influencia os resultados escolares.
De acordo com essa pesquisa, a quantidade de escolas com infraestrutura geral em nível 1 e 2 somados representam 17,4% ao todo. Isto representa o total de escolas que não possuem um nível básico de infraestrutura, e consequentemente, de ensino.
Com esse nível de desigualdade, essas crianças dificilmente têm acesso à tecnologias e é claro, não conseguem ter os benefícios de um aprendizado atrelado à tecnologia em geral, que hoje em dia, é provado que jogos em educação auxiliam no processo de aprendizado.

Fontes: 
[Qualidade da infraestrutura  das escolas públicas do ensino fundamental no Brasil](https://unesdoc.unesco.org/ark:/48223/pf0000368757?posInSet=1&queryId=7990941a-c4d6-47cc-94a7-f163404e5ce8)

### Funcionalidades
### Impactos sociais
### Business Model Canvas
![Business model canva (conhecimento em ação)](https://github.com/erarich/projeto_de_sistemas/blob/develop/.github/files/image.png)

## Parte técnica
TODO(Descrição)
### Ferramentas obrigatórias

### Requisitos funcionais e não-funcionais
1. Interface amigável e atraente para crianças, com design colorido e intuitivo.
2. Criação de desafios educativos que abordem conceitos matemáticos do currículo escolar do 1° ao 5° ano.
3. Módulo de testes para avaliar o conhecimento das crianças, com perguntas de múltipla escolha e questões interativas.
4. Funcionalidade de feedback imediato, fornecendo orientações sobre respostas corretas e erradas.
5. Adaptação a diferentes tamanhos de tela de dispositivos Android.
6. Funcionamento offline, permitindo que as crianças aprendam mesmo sem conexão à internet.
7. Integração com elementos gamificados, como recompensas e conquistas, para manter o interesse e a motivação.
8. Versão piloto na área de matemática até 18/09/2023, com uma demonstração completa.
9. Tela com menu de áreas de conhecimento (para caso seja adicionado uma área além da de matemática).
10. Tela com os modos de jogo dentro da área específica.
11. Tela do menu do jogo específico.


### Tecnologias
* [React Native](https://react.dev/)
* [MaterialUI](https://mui.com/material-ui/)
* [Zustand](https://github.com/pmndrs/zustand)
* [Expo](https://expo.dev/)

### Fatores utilizados do "The Twelve-Factor App"

[The Twelve-Factor App](https://12factor.net/pt_br/)

A aplicação doze-fatores é uma metodologia para construir softwares-como-serviço que pode ser aplicada a aplicações escritas em qualquer linguagem de programação, e que utilizem qualquer combinação de serviços de suporte.
  - O projeto se baseará em:
  1. Código-base (Codebase): Uma base de código com rastreamento utilizando controle de revisão, muitos deploys. Criamos e gerenciamos o app por apenas um repositório, contendo neste toda sua especificação.
  2. Dependências (Dependencies): Declare e isole explicitamente as dependências.  A resolução de dependências do projeto está descrita pelo arquivo package.json, vale ressaltar que o gerenciamento é isolado pelo package manager da própria stack.
  3. Configurações (Config): Armazene as configurações no ambiente. Estamos utilizado variáveis de ambiente para configuração do projeto, fazendo uso tambem do gerenciamento próprio do GitHub secrets.
  4. Construa, lançe, execute (Build, release, run):Separe estritamente os estágios de construção e execução. O processo de desenvolvimento contará com estratégias definidas para as etapas de build release e run do aplicativo utilizando GitHub Actions.
  5.  Dev/Prod semelhantes (Dev/Prod Parity): Mantenha o desenvolvimento, homologação e produção o mais similares possível. Os ambientes de desenvolvimento, teste e produção estarão separados pela estratégia de ramificação do projeto
  6.  Logs (Logs): Trate logs como fluxos de eventos. Faremos uso de logs para rastreios e acompanhamento em etapas de desenvolvimento, bem como em estruturação do projeto no geral.

## Capturas de telas do aplicativo

## Rodando localmente

Clone o projeto

```bash
  git clone https://github.com/erarich/projeto_de_sistemas.git
```

Entre no diretório do projeto

```bash
  cd conhecimentoEmAcao
```

Instale todas as dependências 

```bash
  npm install
```

Inicie o servidor de desenvolvimento

```bash
  npx expo start
```


## Licença

[Sem licença/Domínio público](https://choosealicense.com/licenses/#unlicense). Você pode usar o aplicativo como desejar.



