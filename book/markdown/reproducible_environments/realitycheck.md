# A reality check

## How long is an environment good for?

The short answer is, "not very".
Due to the complexities of dependencies depending on other dependencies, and the lack of global agreement on whether "lock" files are a good idea, it is unrealistic to expect an environment file to "just work" at some arbitrary point in the future.

These days, `conda` environments seem to have rather short "shelf lives".

A practical solution is to keep a *minimal* file specifying your environment.
For example, a `requirements.txt` file with only the package names.
This file is your *long term* specification of your environment.
In the *short term*, lock files may be useful to you.

## Transferring environments between operating systems.

Example:

* You set up and tested your `conda` environment on your `macOS` laptop.
* It works!
  Now, you need to set it up you your institutions' Linux-based cluster.
* You `rsync` your `environment.yml` file over.
  This file pins precise version numbers, and is thus a "lock" file.

In general, this procedure will not work.
It *may* work with simple Python `venvs`.
It *may* also work with `R` environments.
However, experience shows that it almost certainly *will not* work with `conda`.
There is no guarantee that the exact same versions of the exact same things exist for all operating systems on all `conda` channels.

The solution is to strip down to a *minimal* environment file for your `conda` setup.
At first, avoid version number pinning.
Add in the pinning later once things are working.
