# Management

## Keep all of your venvs in one place

```sh
mkdir ~/venvs/
```

## Create a venv

```sh
python3 -m venv ~/venvs/my_new_venv
```

## Activate your new venv

```sh
source ~/venvs/my_new_venv/bin/activate
```

## Deactivate

When you are done working:

```sh
deactivate
```

Another option is to simply close your terminal.

## Removal

```sh
rm -rf ~/venvs/my_new_venv
```

# Alternatives

You may put your venvs wherever you like.
You just have to give the path to wherever you want it. 
To create one in your current working directory:

```sh
python -m venv venv_in_cwd
```

All of the above still applies. Only the path has changed.

# Questions

* The command shown above for removing a venv is dangerous!
  What is the difference between the following two commands?

  ```sh
  rm -f ~/venvs/my_new_venv
  ```

  and

  ```sh
  rm -f ~/venvs
  ```
