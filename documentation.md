# Documentation
A manual to Copilot can be downloaded [here](downloads/copilot_tutorial.pdf).

Copilot comes with a set of examples as part of its distribution, available in
the [examples
directory](https://github.com/Copilot-Language/Copilot/tree/master/examples) of
the repository.


## Structure and Sources
Apart from the Copilot [Github project
page](https://github.com/Copilot-Language), there are a number of sub-projects
that make up Copilot, that all share a single repository:

- `copilot`: The main Copilot package, to which all others are a dependency.
  One should install this one to install Copilot.
  ([Sources](https://github.com/Copilot-Language/copilot))
  ([Hackage](https://hackage.haskell.org/package/copilot))

- `copilot-core`: The core language, which efficiently represents Copilot
  expressions. The core is only of interest to implementers wishing to add a
  new back-end to Copilot.
  ([Hackage](https://hackage.haskell.org/package/copilot-core))

- `copilot-language`: The front-end of Copilot defining the user language. A
  user of Copilot typically interacts with this library.
  ([Hackage](https://hackage.haskell.org/package/copilot-language))

- `copilot-libraries`: User-supplied libraries for Copilot, including
  linear-temporal logic, fault-tolerant voting, regular expressions, etc.
  ([Hackage](https://hackage.haskell.org/package/copilot-libraries))

- `copilot-c99`: A backend writing hard realtime C99 code. It writes
  readable output and ensures the output code is constant in memory and time.
  ([Hackage](https://hackage.haskell.org/package/copilot-c99))

- `copilot-theorem`: Some tools to prove properties on Copilot.
  ([Hackage](https://hackage.haskell.org/package/copilot-theorem))

Additionally there is a specific repository that lists most of the papers and
articles written on Copilot:
[copilot-discussion](https://github.com/Copilot-Language/copilot-discussion).
