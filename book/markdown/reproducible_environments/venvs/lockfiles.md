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

# Reproducing your `venv`

You have created a `venv`.
During the course of your work, you have `pip install`ed a lot of things.
What is in your `venv`?

## The `pip freeze` command

Type this (in your *activated* `venv`, of course):

```sh
pip freeze
```

Concrete example:

* If you have an activated `venv`, `deactivate` it.
* Create a new one.
* Activate it, then

  ```sh
  pip install pandas
  ```
* Now, say

  ```sh
  pip freeze
  ```

## Saving the results

Use redirection to save the output from `pip freeze`:

```sh
pip freeze > lockfile.txt
```

This "lock" file has the same type of contents as found in `requirements.txt`.
The differences are:

* The lock file contains **nearly everything** in your `venv`.
  (The "nearly" is because a few packages that are always there are not included.)
* The precise version of everything is included.

The output of `pip freeze` for this book is:

```{code-cell}
---
"tags": ['remove-input']
---

import subprocess

result = subprocess.run(['pip', 'freeze'], stdout=subprocess.PIPE)
print(str(result.stdout.decode('utf8')))
```

## Using your lockfile to recreate your `venv` elsewhere.

You are happy with your `venv` on your laptop.
Your code works, etc..
Now, you need to "scale up" and run your work flow on a more powerful machine:

* Create a `venv` on that machine.
* Activate it.
* Say:

  ```sh
  pip install -r lockfile.txt
  ```
Voila!
You have reproduced your environment on another machine.

This file is called a "lock" file because it locks each listed dependency to a specific version.

## Another method.

Simply install from your `requirements.txt`.
Often, the full "lock" file is overkill.

## Other alternatives

* [pip-tools](https://github.com/jazzband/pip-tools)
