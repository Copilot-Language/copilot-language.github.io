## Introduction
Copilot is a runtime verification framework written in Haskell. It allows the
user to write programs in a simple but powerful way using a stream-based
approach.

Programs can be interpreted for testing, or translated C99 code to be
incorporated in a project, or as a standalone application. The C99 backend
ensures us that the output is constant in memory and time, making it suitable
for systems with hard realtime requirements.


## Installation

Currently the Copilot 3.0 release requires GHC 8.0 or higher.

Copilot is available from
[Hackage](https://hackage.haskell.org/package/copilot), and the latest version
can be installed easily:

    cabal install copilot

Alternatively one can download and install it from the repositories as well:

    git clone --recursive https://github.com/Copilot-Language/Copilot.git
    cd Copilot
    git submodule update --init --remote
    make

Typically one would only go this route to develop Copilot. For regular users
the cabal method is highly recommended.


## Example
Here follows a simple example of a heating system. Other examples can be found
in the [Examples
directory](https://github.com/Copilot-Language/Copilot/tree/master/Examples)
of the main repository.

    -- This is a simple example with basic usage. It implements a simple home
    -- heating system: It heats when temp gets too low, and stops when it is high
    -- enough. It read temperature as a byte (range -50C to 100C) and translates
    -- this to Celcius.

    module Heater where

    import Language.Copilot
    import Copilot.Compile.C99

    import Prelude hiding ((>), (<), div)

    -- External temperature as a byte, range of -50C to 100C
    temp :: Stream Word8
    temp = extern "temperature" Nothing

    -- Calculate temperature in Celcius.
    -- We need to cast the Word8 to a Float. Note that it is an unsafeCast, as there
    -- is no direct relation between Word8 and Float.
    ctemp :: Stream Float
    ctemp = (unsafeCast temp) * (150.0 / 255.0) - 50.0

    spec = do
      -- Triggers that fire when the ctemp is too low or too high,
      -- pass the current ctemp as an argument.
      trigger "heaton"  (ctemp < 18.0) [arg ctemp]
      trigger "heatoff" (ctemp > 21.0) [arg ctemp]

    -- Compile the spec
    main = reify spec >>= compile "heater"


## Documentation
A manual to Copilot can be downloaded [here](copilot_tutorial.pdf).

Copilot comes with a set of examples as part of its distribution, available in
the [Examples
directory](https://github.com/Copilot-Language/Copilot/tree/master/Examples) of
the main repository.


## Structure and Sources
Apart from the Copilot [Github project
page](https://github.com/Copilot-Language), there are a number of sub-projects
that make up Copilot:

- `Copilot`: The main Copilot package, to which all others are a dependency.
  One should install this one to install Copilot.
  ([Sources](https://github.com/Copilot-Language/Copilot))
  ([Hackage](https://hackage.haskell.org/package/copilot))

- `copilot-core`: The core language, which efficiently represents Copilot
  expressions. The core is only of interest to implementers wishing to add a
  new back-end to Copilot.
  ([Sources](https://github.com/Copilot-Language/copilot-core))
  ([Hackage](https://hackage.haskell.org/package/copilot-core))

- `copilot-language`: The front-end of Copilot defining the user language. A
  user of Copilot typically interacts with this library.
  ([Sources](https://github.com/Copilot-Language/copilot-language))
  ([Hackage](https://hackage.haskell.org/package/copilot-language))

- `copilot-libraries`: User-supplied libraries for Copilot, including
  linear-temporal logic, fault-tolerant voting, regular expressions, etc.
  ([Sources](https://github.com/Copilot-Language/copilot-libraries))
  ([Hackage](https://hackage.haskell.org/package/copilot-libraries))

- `copilot-c99`: A backend writing hard realtime C99 code. It writes
  readable output and ensures the output code is constant in memory and time.
  ([Sources](https://github.com/Copilot-Language/copilot-c99))
  ([Hackage](https://hackage.haskell.org/package/copilot-c99))

- `copilot-theorem`: Some tools to prove properties on Copilot.
  ([Sources](https://github.com/Copilot-Language/copilot-theorem))
  ([Hackage](https://hackage.haskell.org/package/copilot-theorem))

Additionally there is a specific repository that lists most of the papers and
articles written on Copilot:
[copilot-discussion](https://github.com/Copilot-Language/copilot-discussion).


## Acknowledgements
We are grateful for NASA Contract NNL08AD13T to Galois, Inc. and the National
Institute of Aerospace, which partially supported this work.

We would like to thank Kaveh Darafsheh (NASA Langley Research Center) for his
help with testing Copilot.

In addition numerous people have helped with smaller things, reporting bugs
etc. Thanks to all of them!


## License
Copilot is distributed under the BSD-3-Clause license, which can be found
[here](https://raw.githubusercontent.com/Copilot-Language/Copilot/master/LICENSE)


## Issues / Bugs
If you happen to find any issues or bugs, please add an issue to the
corresponding repository on our Github pages.


## Contact
The project is currently maintained by Frank Dedden and Alwyn Goodloe (NASA
Langley Research Center). For any questions, remarks, ideas etc. please send an
email to [dev@dedden.net](mailto:dev@dedden.net).


## The Copilot Team
The development of Copilot spans across several years. During these years
the following people have helped develop Copilot (in no particular order):

* Lee Pike
* Alwyn Goodloe
* Robin Morisset
* Levent Erkők
* Sebastian Niller
* Nis Wegmann
* Chris Hathhorn
* Eli Mendelson
* Jonathan Laurent
* Laura Titolo
* Georges-Axel Jolayan
* Macallan Cruff
* Ryan Spring
* Lauren Pick
* Frank Dedden
* Ivan Perez
