# Welcome

# Introduction


# Part 1: Syntax Definition with SDF3

## Create a new Spoofax project

## Syntax of Decls

```
sorts Start Program
context-free syntax

	Start.Program = <<Program>>
	Start.Expression = <<Exp>>
  Program.Decls = <<{Decl "\n"}*>>   
	Decl.Exp = [>[Exp]]
```

## Syntax of Number Expressions

```
sorts Start Exp
context-free syntax
  Start.Expression = Exp
	Exp.Int   = <<INT>>
  Exp.Min   = [-[Exp]]
  Exp.Add   = <<Exp> + <Exp>> {left}
  Exp.Sub   = <<Exp> - <Exp>> {left}
  Exp.Mul   = <<Exp> * <Exp>> {left}
```

## Lexical syntax of INT

```
//lexical sorts ID
lexical syntax
  ID = [a-zA-Z] [a-zA-Z0-9]*
lexical restrictions
  ID -/- [a-zA-Z0-9\_]
```

## Syntax of Booleans

## Syntax of Variables

- lexical syntax of identifiers
- definitions and bindings
- let, letpar, letrec





# Part 2: Static Semantics with Statix
