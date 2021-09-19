# Defining the goals

## What do we want to accomplish?

We want you to be able to describe what software your own code needs in order to work.
This description should be *shareable*, allowing *someone else* to run your code.

Hint: that "someone else" is usually *you*, several months down the road.
You didn't get as much done this quarter due to a heavy work load as a TA.
You were gone all summer in the field.
When you get back to your computer, you need to figure out where you left off.
Being able to specify your project's *software environment* is a key part of figuring that out.

The other very important case is when you get a new computer!
Being able to copy your environment specifications to the new machine is a big help.

## "Clean" environments

The goal is to get you used to starting "clean" environments for your projects.
What does this mean?

Example:

* You are about to start working on some Python code.
* You start a new environment that has *nothing* in it other than Python.
* You add to that just what you need.

Replace `Python` with `R` in the above for other projects.
Heck, you can even have both languages in the same project, and the same idea applies.

## Why not just install everything in the "default location"?

Why not just install all of your `R` packages with `RStudio` like you've already been doing?
Why not just let `Python` put things wherever it wants to?

You can!
It'll work great for you.
But, your work will be less *shareable*.
The reason for this is subtle.
You will give *someone else* the file specifying your software environment.
It won't work for them.
But, it does work for you.
It even works if you attempt to clean out your system and reinstall stuff.
What is going on?
The odds are that it works for you because you have an unspecified dependency installed somewhere "globally".

Starting with clean environments prevents this problem.
It also helps you move your work from one machine to another.
For example, from your laptop to your institution's cluster.

