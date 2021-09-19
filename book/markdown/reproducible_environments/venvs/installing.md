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

# Installing new software

We have created a new `venv` and know a bit about what is in it.
Now, let's install some Python packages!

## Using the command line

To install the Python [seaborn](https://seaborn.pydata.org/) plotting package:

```sh
pip install seaborn
```

To uninstall it:

```sh
pip uninstall seaborn
```

## `requirements.txt` files

Create a file called `requirements.txt` with the following contents:

```
pandas
scipy
```

Then:

```sh
pip install -r requirements.txt
```

The `requirements.txt` file for this book is:

```{code-cell}
---
"tags": ['remove-input']
---

import subprocess

result = subprocess.run(['cat', '../../../requirements.txt'], stdout=subprocess.PIPE)
print(str(result.stdout.decode('utf8')))
```

## What we learned

* `pip` is a command to install Python packages.
* We invoke `pip` using the command line.
* We may keep a list if packages to install in a file.
  By tradition, that file name is called `requirements.txt`.
  Other names are allowed.
  Multiple "requirements" files for different purposes are allowed.

[Read more](https://pip.pypa.io/en/stable/user_guide/) about `pip`.
The link contains a detailed section on requirements files.
Typically, `requirements.txt` lists exactly what you need to get your own code running.
For example, if your code makes a bunch of plots using `seaborn`, then simply write `seaborn` in the file.
(After reading one of the previous links, feel free to specify an exact or minimal `seaborn` version.)
