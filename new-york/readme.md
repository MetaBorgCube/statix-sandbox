## New York language familiy

### Introduction

This language family serves as an example/case-study to demonstrate multi-language static analysis. It allows to use data definitions from a language to be used in another language.

### Running the project

In order to run the project, execute: `./gradlew newYorkEclipse`

### Involved languages

There are three languages involved in this project:
- `manhattan` is the new incarnation of the `mod` language, with string literals added to it.
- `brooklyn` is a SQL substrate that currently only provides `CREATE TABLE (...)` statements.
- `canarsie` is the part of the statix spec that both languages share.

### Project layout

This project follows the spoofax 3 layout (as it was in October 8, 2020).
Firstly, the `*.spoofaxcore` projects are regular spoofax 2 project, but built using gradle.
The projects without suffix re-package the spoofax2 artifacts in a standard `.jar` file.
Thirdly, the projects with the `.spoofax` suffix integrate the languages with the spoofax3 framework, by providing `Pie` tasks for the various operations of the language, and collecting all relevant information in a `Component`.
Finally, the `.eclipse.*` provide eclipse plugins to use the language in an editor.
