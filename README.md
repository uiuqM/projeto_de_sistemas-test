
# Conhecimento em Ação

### PT-BR:
Projeto desenvolvido para a disciplina de Projeto de Sistemas do Curso de Ciência da Computação da Universidade Federal do Tocantins, Câmpus Palmas, 2023.2.

#### Escopo: 

Aplicativo Educativo para Crianças.

##### Problemática do projeto:

Não é recente as críticas ao ensino público brasileiro, com o nível sempre abaixo, conforme pesquisa da UNESCO de 2019, as escolas municipais possuem infraestrutura precária e isso influencia os resultados escolares.
De acordo com essa pesquisa, a quantidade de escolas com infraestrutura geral em nível 1 e 2 somados representam 17,4% ao todo. Isto representa o total de escolas que não possuem um nível básico de infraestrutura, e consequentemente, de ensino.
Com esse nível de desigualdade, essas crianças dificilmente têm acesso à tecnologias e é claro, não conseguem ter os benefícios de um aprendizado atrelado à tecnologia em geral, que hoje em dia, é provado que jogos em educação auxiliam no processo de aprendizado.

[Qualidade da infraestrutura das escolas públicas do ensino fundamental no brasil](https://unesdoc.unesco.org/ark:/48223/pf0000368757?posInSet=1&queryId=7990941a-c4d6-47cc-94a7-f163404e5ce8)

##### Público-alvo: 

Alunos do 1° ao 5° ano do ensino fundamental, com idades entre 6 e 10 anos.

##### Objetivos do Projeto:

Desenvolver um aplicativo educativo interativo para auxiliar no estímulo à lógica e no desenvolvimento do conhecimento de crianças em idade escolar.

##### Produto a Desenvolver:

Um jogo educativo com desafios e testes de conhecimento, focado inicialmente na área de matemática, projetado especificamente para o público-alvo.

##### Requisitos do Projeto:

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

##### Cronograma parcial:

- Fase de Planejamento e Design: Até 13/08/2023.
- Desenvolvimento do Módulo de Matemática: Até 04/09/2023.
- Testes e Ajustes da Demo: Até 18/09/2023.
#
#### [The Twelve-Factor App](https://12factor.net/pt_br/)

##### Resumo:
A aplicação doze-fatores é uma metodologia para construir softwares-como-serviço que pode ser aplicada a aplicações escritas em qualquer linguagem de programação, e que utilizem qualquer combinação de serviços de suporte.
  - O projeto se baseará em:
  1. Código-base (Codebase): Um único aplicativo deve ser gerenciado em um único repositório de código. Isso promove a rastreabilidade e facilita a colaboração entre os membros da equipe.
  2. Dependências (Dependencies): Todas as dependências do aplicativo devem ser declaradas explicitamente, geralmente em um arquivo de manifesto ou configuração. Isso garante que todos os membros da equipe tenham uma compreensão clara das dependências do projeto.
  3. Configurações (Config): As configurações do aplicativo, como variáveis de ambiente, chaves de API e conexões de banco de dados, devem ser separadas do código e armazenadas de maneira externa. Isso permite que as configurações sejam facilmente alteradas sem a necessidade de modificar o código-fonte.
  4. Build, release, run: O processo de desenvolvimento deve ser dividido em três etapas distintas: construção (build), lançamento (release) e execução (run). Isso facilita a implantação de versões consistentes do aplicativo em diferentes ambientes.
  5.  Dev/Prod Parity: Os ambientes de desenvolvimento, teste e produção devem ser o mais semelhantes possível para minimizar problemas causados por diferenças de configuração.
  6.  Logs: Os logs do aplicativo devem ser tratados como fluxos de eventos, sendo acessíveis e pesquisáveis. Isso facilita a identificação e resolução de problemas.


#

### English:
Project developed for the Systems Design discipline of the Computer Science course at the Federal University of Tocantins, Palmas Campus, 2023.2.

#### Scope:
Educational App for Children.

##### Project problematic:

The criticisms of Brazilian public education are not recent, with the level always below. According to a 2019 UNESCO study, municipal schools have poor infrastructure and this influences school results. According to this study, the number of schools with general infrastructure at level 1 and 2 combined represent 17.4% of the total. This represents the total number of schools that do not have a basic level of infrastructure, and consequently, of education. With this level of inequality, these children are unlikely to have access to technology and, of course, do not get the benefits of a learning tied to technology in general, which today, it is proven that games in education help in the learning process.

##### Target Audience:
Students from 1st to 5th grade of elementary school, aged between 6 and 10 years.

##### Project Objectives:
Develop an interactive educational app to help stimulate logic and the development of knowledge in school-age children.

##### Product to Develop:
An educational game with challenges and knowledge tests, initially focused on the field of mathematics, specifically designed for the target audience.

##### Project Requirements:
1. User-friendly and appealing interface for children, with colorful and intuitive design.
2. Creation of educational challenges that cover mathematical concepts from the 1st to the 5th-grade school curriculum.
3. Testing module to assess children's knowledge, with multiple-choice questions and interactive tasks.
4. Immediate feedback functionality, providing guidance on correct and wrong answers.
5. Adaptation to different screen sizes of Android devices.
6. Offline functionality, allowing children to learn even without an internet connection.
7. Integration with gamified elements, such as rewards and achievements, to maintain interest and motivation.
8. Pilot version in the mathematics area by September 18, 2023, with a complete demonstration.
9. Screen with knowledge area menu (in case an area beyond mathematics is added).
10. Screen with game modes within the specific area.
11. Menu screen of the specific game.

##### Partial Schedule:
- Planning and Design Phase: Until August 13, 2023.
- Mathematics Module Development: Until September 4, 2023.
- Testing and Demo Adjustments: Until September 18, 2023.

#

#### [The Twelve-Factor App](https://12factor.net/pt_br/)

#### Resume:
Twelve-factor apps are a methodology for building software-as-a-service (SaaS) applications that can be applied to applications written in any programming language and that use any combination of supporting services.
  - The project will be based on:
  1. Codebase: A single application should be managed in a single code repository. This promotes traceability and makes collaboration between team members easier.
  2. Dependencies: All application dependencies should be explicitly declared, typically in a manifest or configuration file. This ensures that all team members have a clear understanding of the project's dependencies.
  3. Configuration: Application configurations, such as environment variables, API keys, and database connections, should be separated from the code and stored externally. This allows configurations to be easily changed without the need to modify the source code.
  4. Build, release, run: The development process should be divided into three distinct stages: build, release, and run. This facilitates the deployment of consistent versions of the application to different environments.
  5. Dev/Prod Parity: Development, testing, and production environments should be as similar as possible to minimize problems caused by configuration differences.
  6. Logs: Application logs should be treated as event streams and be accessible and searchable. This facilitates the identification and resolution of problems.

##

#### Stacks:
* [React Native](https://react.dev/)
* [MaterialUI](https://mui.com/material-ui/)
* [Zustand](https://github.com/pmndrs/zustand)
* [Expo](https://expo.dev/)

##

## App's Screenshots



## Design's Screenshots

(colocar data do término do design)

## Running locally

Clone the project

```bash
  git clone https://github.com/erarich/projeto_de_sistemas.git
```

Enter the directory project

```bash
  cd conhecimentoEmAcao
```

Install all dependencies

```bash
  npm install
```

Start dev server

```bash
  npx expo start
```


## License

[Unlicense/Public Domain](https://choosealicense.com/licenses/#unlicense). You can use app this as you wish.



