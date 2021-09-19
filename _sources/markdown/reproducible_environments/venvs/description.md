# What is in our `venv`?

When we create a `venv`:

* We have a "fresh" minimal python environment.
* The `venv` contains several executable programs in its own directory.

Example:

```sh
python3 -m venv ~/venvs/test_venv
kevin@pop-os:~/src/ComputerSkills4GradStudents$ source ~/venvs/test_venv/bin/activate
(test_venv) kevin@pop-os:~/src/ComputerSkills4GradStudents$ which python
/home/kevin/venvs/test_venv/bin/python
```

In fact, our virtual environment contains several programs:

```sh
ls -lhrt /home/kevin/venvs/test_venv/bin
```

The output on my system is:

```
lrwxrwxrwx 1 kevin kevin   16 Sep 18 13:36 python3 -> /usr/bin/python3
lrwxrwxrwx 1 kevin kevin    7 Sep 18 13:36 python -> python3
-rwxrwxr-x 1 kevin kevin  253 Sep 18 13:36 easy_install-3.8
-rwxrwxr-x 1 kevin kevin  253 Sep 18 13:36 easy_install
-rwxrwxr-x 1 kevin kevin  244 Sep 18 13:36 pip3.8
-rwxrwxr-x 1 kevin kevin  244 Sep 18 13:36 pip3
-rwxrwxr-x 1 kevin kevin  244 Sep 18 13:36 pip
-rw-r--r-- 1 kevin kevin 8.7K Sep 18 13:40 Activate.ps1
-rw-r--r-- 1 kevin kevin 2.4K Sep 18 13:40 activate.fish
-rw-r--r-- 1 kevin kevin 1.3K Sep 18 13:40 activate.csh
-rw-r--r-- 1 kevin kevin 2.2K Sep 18 13:40 activate
```

We see `python`, `python3`, and our `activate` command used to "turn on" the `venv`.
Our next section concerns `pip`.
(We will ignore `easy_install`.)

## What we learned

* The `which` command returns the full path of a program.
* The `python` program in an *activated* `venv` is the one that will run when we say:

  ```sh
  python
  ```

  on our command line.
