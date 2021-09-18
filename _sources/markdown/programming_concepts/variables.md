---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Variables

## Key concepts

### Assignment

We need to attach data to symbols.
These symbols are *variables*, and they should feel familiar from mathematics.

#### Reading from left to right

Reading from left to right, the following code says, *create a variable named `x` and assign it the value `15`*.

```{code-cell}
x = 15
```

#### Reading from right to left

The previous example can also be read in the other direction.
*Assign the value `15` to a variable named `x`*.

#### Not just numbers

```{code-cell}
my_name = "Mr. Potato Head"
print(my_name)
```

### Modification

```{code-cell}
x = x + 1
print(x)
```

Another example:

```{code-cell}
y = -5
z = x + y
print(z)
```

### "Null" values

It is sometimes useful to *not* assign a value when first declaring a variable. 

```{code-cell}
a = None
```

Example:

* Our data exist as a set of `key, value` pairs.
  For example, the `key` may be a gene name and the `value` a measurement of expression level.
* Our analysis does some operation on a `value`.
* If we are asked to do an operation on a `key` that does not exist, what should we do?
* One option is to return a "null" value, which is `None` in Python.

## What we learned

* Variables are *symbolic names* used to "hold" data.
* We use the equals sign (`=`) to attach a value to a variable.
* Values can be numbers, collections of words in quotes ("`strings`"), etc.
* Values assigned to variables can be modified.
* Variables may be assigned "null" values.
* Variables can be combined, etc., in various ways.
  The methods shown here use regular mathematics symbols like `+`.
* There are statements (like `print`) that seem to do things with variables.
  The `print` statement is a `function` -- more on those later.

## Exceptions and caveats

* The concept of "null" values gets different treatments in different languages.
  `R` has a couple different flavors for different contexts (`NULL`, `NA`).
  In `C`, only certain types of variables may be assigned `NULL`.
  Etc..
* The `=` syntax for assignment is not universal!
  In `R`, `x <- 10` is common, and `x = 10` is also allowed.
  Believe it or not, they mean different things that matter sometimes but not always!

## Questions

* What is the "left to right" interpretation of `z = x + y` from the last example?
* What happens if you try to execute the following code?

```python
a = None
b = 10
c = a + b
```

  What does this tell you, if anything, about `values`?
