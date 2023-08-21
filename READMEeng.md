# Conhecimento em Ação

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



