<p align="center">
  <a href="https://po-ui.io">
    <img width="250" src="./docs/assets/po-logos/po_color_bg.svg">
  </a>
</p>

<div align="center">

Biblioteca de componentes de UI para Angular.

[![Travis branch](https://img.shields.io/travis/com/po-ui/po-angular/master?style=flat-square)](https://travis-ci.com/github/po-ui/po-angular)
[![npm package](https://img.shields.io/npm/v/@po-ui/ng-components?color=%23c9357d&style=flat-square)](https://www.npmjs.org/package/@po-ui/ng-components)
[![NPM downloads](https://img.shields.io/npm/dm/@po-ui/ng-components?color=c9357d&label=npm%20downloads&style=flat-square)](https://npmjs.com/package/@po-ui/ng-components)
[![GitHub license](https://img.shields.io/npm/l/@po-ui/ng-components?color=%23c9357d&style=flat-square)](https://github.com/po-ui/po-angular/blob/master/LICENSE)
[![Twitter](https://img.shields.io/badge/Twitter-POUI-c9357d?style=flat-square&logo=twitter)](https://twitter.com/pouidev)

</div>

---

### Pré-requisitos

Para começar a utilizar o **PO UI 21**, use uma versão do `Node.js` compatível com o Angular 21: `20.19+`, `22.12+` ou `24+` (Node 24 é recomendado). O projeto usa Angular `21.2.x` e TypeScript `5.9.x`. Consulte a [matriz oficial de compatibilidade do Angular](https://angular.dev/reference/versions) antes de atualizar a versão principal.

### Passo 1 - Crie o seu primeiro projeto

> Caso você já tenha um projeto criado e deseje apenas incluir o **Po**, pule esta etapa e vá para o **Passo 1.1**.

O [Angular CLI](https://cli.angular.io/) se encarrega de construir toda a estrutura inicial. Use a versão 21 do CLI sem instalá-la globalmente:

```bash
npx @angular/cli@21 new my-po-project --skip-install
```

> O parâmetro `--skip-install` permite criar o projeto, contudo, não instalará as dependências automaticamente.


#### Passo 1.1 - Instalando as dependências

Antes de executar a instalação ou inserir o **Po** no seu projeto existente, é necessário verificar as dependências do seu projeto, algumas delas precisam estar de acordo com a versão do **Po** e Angular (elas podem ser encontradas no arquivo `package.json` localizado na raiz da aplicação).

Veja abaixo a lista de dependências e as versões compatíveis, elas devem ser conferidas e se necessário, ajustadas no seu projeto.

```json
  "dependencies": {
    "@angular/animations": "~21.2.17",
    "@angular/common": "~21.2.17",
    "@angular/compiler": "~21.2.17",
    "@angular/core": "~21.2.17",
    "@angular/forms": "~21.2.17",
    "@angular/platform-browser": "~21.2.17",
    "@angular/platform-browser-dynamic": "~21.2.17",
    "@angular/router": "~21.2.17",
    "rxjs": "~7.8.1",
    "tslib": "^2.6.2",
    "zone.js": "~0.15.0"
    ...
  },
  "devDependencies": {
    "@angular-devkit/build-angular": "~21.2.17",
    "@angular-devkit/schematics": "~21.2.17",
    "@angular/cli": "~21.2.17",
    "@angular/compiler-cli": "~21.2.17",
    ...
    "typescript": "~5.9.3"
  }
```

Após verificar se estas dependências do seu projeto estão com as versões compatíveis declaradas acima, acesse a pasta raiz do seu projeto e execute o comando abaixo:

Instalando com npm:
```
npm install
```

### Passo 2 - Adicionando o pacote @po-ui/ng-components

O comando `ng add` instala o pacote **PO UI**, importa `PoModule`, configura o tema padrão e prepara o cliente HTTP usado pelos serviços da biblioteca.

Execute o comando abaixo na pasta raiz do seu projeto:

```bash
npx ng add @po-ui/ng-components
```

> Ao executar o comando acima, será perguntado se deseja incluir uma estrutura inicial em seu projeto com menu lateral, página e toolbar, utilizando componentes do **Po**, **caso desejar, apenas informe: `Y`**.

### Passo 3 - Rode o seu projeto

Agora basta executar mais um comando para subir a aplicação e ver o seu projeto rodando no *browser* ;).

```
ng serve
```

Abra o *browser* e acesse a url http://localhost:4200. Pronto!

### Prévia local com Docker

O Dockerfile prepara o pacote UI e inicia o aplicativo de demonstração do workspace:

```bash
docker build -t po-ui-dev .
docker run --rm -p 127.0.0.1:4200:4200 po-ui-dev
```

Acesse http://localhost:4200. A porta fica disponível somente na máquina local. Essa imagem usa o servidor de desenvolvimento Angular e destina-se a uma prévia local; para produção, use o processo de build e publicação do portal descrito nos scripts do projeto.

----

### MCP? Sim!

Temos uma ótima notícia para a comunidade de desenvolvedores! Nossa biblioteca Angular agora faz parte do [Context7](https://context7.com/po-ui/po-angular), uma plataforma que fornece documentação e trechos de código sempre atualizados para LLMs e editores de código com suporte a IA.

#### O que isso significa para você?

- **Acesso Rápido à Documentação:** Obtenha a documentação mais recente e exemplos de uso da nossa biblioteca diretamente em seu ambiente de desenvolvimento, como Cursor, Claude e outros LLMs.
- **Desenvolvimento Acelerado com IA:** Ao usar um editor de código com IA, você pode instruí-lo a utilizar nossa biblioteca e ele terá acesso a todo o contexto necessário para gerar código preciso e funcional.

#### Suporte ao Protocolo de Contexto de Modelo (MCP)

Nossa biblioteca está disponível através de um servidor MCP do Context7. O MCP é um padrão aberto projetado para conectar de forma inteligente assistentes de IA a fontes de dados, como a documentação da nossa biblioteca. Isso garante que a IA tenha o contexto correto para responder às suas solicitações de programação com maior precisão.

Para começar, basta mencionar o nome da nossa biblioteca em suas interações com um LLM que suporte o Context7.

----

### E agora?

Agora é só abrir seu **editor / IDE** favorito e começar a trabalhar no seu projeto.

Caso você queira utilizar nossos componentes de templates, como o **[po-page-login](https://po-ui.io/documentation/po-page-login)**, **[po-modal-password-recovery](https://po-ui.io/documentation/po-modal-password-recovery)**, **[po-page-blocked-user](https://po-ui.io/documentation/po-page-blocked-user)**, **[po-page-dynamic-table](https://po-ui.io/documentation/po-page-dynamic-table)** entre outros, basta adicionar o pacote `@po-ui/ng-templates` executando o comando abaixo:

```
ng add @po-ui/ng-templates
```
> Ao executar este comando, será instalado o pacote `@po-ui/ng-templates` e configurado o `PoTemplatesModules` no `app.module`.

A partir dai o seu projeto está preparado para receber outros componentes do **[PO UI](https://po-ui.io/documentation)**! \o/
