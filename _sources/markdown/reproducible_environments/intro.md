# Introduction

When you work on a project involving software, the code that you write will depend on other code.
These other pieces of code are `dependencies` of your project -- your project must have access to them in order to work.

For example, an `R` script using [ggplot2](https://ggplot2.tidyverse.org/) to produce plots from data cannot work unless that package is installed into a local `R` environment.

When people start out with `R` and/or `Python`, they will often install dependencies haphazardly, installing whatever they need as they need it.
This approach works, but it has its drawbacks.
For example, you get a new laptop and you move your code onto it.
Nothing works!
Why?
*The dependencies are not there.*
In the absence of the methods described in the next few sections, your only option is to install things by trial and error, using the following algorithm:

  1. Attempt to run your code.
     If it works, to to step `5`.
     If not, proceed to step `2`.
  2. If you see an error about a missing dependency ("package not found", etc.), go to step `3`.
     If you see an error you cannot understand, go to step `4`.
  3. Install the missing dependency.
     Return to step `1`.
  4. Give up.
  5. Terminate the algorithm.
     Your code is working again.

Clearly, this approach is inefficient.
The next several sections discuss better approaches.
