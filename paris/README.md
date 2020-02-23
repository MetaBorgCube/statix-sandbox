# Paris: Multi-File Language with Multi-File Definition 

This project further develops the language with modules (See `/modules/`) to support multi-file analysis and to use Statix' support for multi-file analysis.

Using the latter, the project is divided into a series of language components in the `/lang/` directory. Each language provides a `syntax.sdf3` and a `statics.stx` file. (For some components a rudimentary interpreter is defined in Stratego in `dynamics.str` files.)

The project adopts the convention to capture name declaration and querying in separate predicates with the naming schema `declareX` and `typeOfX`. The `lang/variable/statics` module provides (in comments) several alternative resolution strategies; their effects are demonstrated in the slides (see below).

The project was the basis for the talk "Type Checkers from Declarative Type System Specifications in Statix" at INRIA; see https://eelcovisser.org/talks/2020/02/20/type-checkers-in-statix/ for the slides.
