[![CI](https://github.com/JacekZubielik/Node-App/actions/workflows/node.js.yml/badge.svg)](https://github.com/JacekZubielik/Node-App/actions/workflows/node.js.yml) [![Image](https://github.com/JacekZubielik/Node-App/actions/workflows/image.yml/badge.svg)](https://github.com/JacekZubielik/Node-App/actions/workflows/image.yml) [![Lint](https://github.com/JacekZubielik/Node-App/actions/workflows/lint.yml/badge.svg)](https://github.com/JacekZubielik/Node-App/actions/workflows/lint.yml) [![Release](https://github.com/JacekZubielik/Node-App/actions/workflows/release.yml/badge.svg)](https://github.com/JacekZubielik/Node-App/actions/workflows/release.yml)

Release test 1 (Fix)

<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo_text.svg" width="320" alt="Nest Logo" /></a>
</p>

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Installing `standard-version`

### As a local `npm run` script

Install and add to `devDependencies`:

```
npm i --save-dev standard-version
```

Add an [`npm run` script](https://docs.npmjs.com/cli/run-script) to your `package.json`:

```json
{
  "scripts": {
    "release": "standard-version"
  }
}
```

Now you can use `npm run release` in place of `npm version`.

This has the benefit of making your repo/package more portable, so that other developers can cut releases without having to globally install `standard-version` on their machine.

### As global `bin`

Install globally (add to your `PATH`):

```
npm i -g standard-version
```

Now you can use `standard-version` in place of `npm version`.

This has the benefit of allowing you to use `standard-version` on any repo/package without adding a dev dependency to each one.

### Using `npx`

As of `npm@5.2.0`, `npx` is installed alongside `npm`. Using `npx` you can use `standard-version` without having to keep a `package.json` file by running: `npx standard-version`.

This method is especially useful when using `standard-version` in non-JavaScript projects.

## Configuration

You can configure `standard-version` either by:

1. Placing a `standard-version` stanza in your `package.json` (assuming
   your project is JavaScript).
2. Creating a `.versionrc`, `.versionrc.json` or `.versionrc.js`.
  - If you are using a `.versionrc.js` your default export must be a configuration object, or a function returning a configuration object.

Any of the command line parameters accepted by `standard-version` can instead
be provided via configuration. Please refer to the [conventional-changelog-config-spec](https://github.com/conventional-changelog/conventional-changelog-config-spec/) for details on available configuration options.


### Customizing CHANGELOG Generation

By default (as of `6.0.0`), `standard-version` uses the [conventionalcommits preset](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-conventionalcommits).

This preset:

* Adheres closely to the [conventionalcommits.org](https://www.conventionalcommits.org)
  specification.
* Is highly configurable, following the configuration specification
  [maintained here](https://github.com/conventional-changelog/conventional-changelog-config-spec).
  * _We've documented these config settings as a recommendation to other tooling makers._

There are a variety of dials and knobs you can turn related to CHANGELOG generation.

As an example, suppose you're using GitLab, rather than GitHub, you might modify the following variables:

* `commitUrlFormat`: the URL format of commit SHAs detected in commit messages.
* `compareUrlFormat`: the URL format used to compare two tags.
* `issueUrlFormat`: the URL format used to link to issues.

Making these URLs match GitLab's format, rather than GitHub's.

## CLI Usage

> **NOTE:** To pass nested configurations to the CLI without defining them in the `package.json` use dot notation as the parameters `e.g. --skip.changelog`.

### First Release

To generate your changelog for your first release, simply do:

```sh
# npm run script
npm run release -- --first-release
# global bin
standard-version --first-release
# npx
npx standard-version --first-release
```

This will tag a release **without bumping the version `bumpFiles`[1]()**.

When you are ready, push the git tag and `npm publish` your first release. \o/

### Cutting Releases

If you typically use `npm version` to cut a new release, do this instead:

```sh
# npm run script
npm run release
# or global bin
standard-version
```

As long as your git commit messages are conventional and accurate, you no longer need to specify the semver type - and you get CHANGELOG generation for free! \o/

After you cut a release, you can push the new git tag and `npm publish` (or `npm publish --tag next`) when you're ready.

### Release as a Pre-Release

Use the flag `--prerelease` to generate pre-releases:

Suppose the last version of your code is `1.0.0`, and your code to be committed has patched changes. Run:

```bash
# npm run script
npm run release -- --prerelease
```
This will tag your version as: `1.0.1-0`.

If you want to name the pre-release, you specify the name via `--prerelease <name>`.

For example, suppose your pre-release should contain the `alpha` prefix:

```bash
# npm run script
npm run release -- --prerelease alpha
```

This will tag the version as: `1.0.1-alpha.0`



## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## Stay in touch

- Author - [Kamil Myśliwiec](https://kamilmysliwiec.com)
- Website - [https://nestjs.com](https://nestjs.com/)
- Twitter - [@nestframework](https://twitter.com/nestframework)

## License

Nest is [MIT licensed](LICENSE).
