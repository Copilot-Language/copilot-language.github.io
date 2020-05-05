# Download & Installing
Copilot is implemented as a Embedded Domain Specific Language in Haskell.
Currently Copilot 3.1 requires a version of the Glasgow Haskell Compiler (GHC)
of at least 8.0 to be installed. The recommended way to do this is by
installing the [Haskell Platform](https://www.haskell.org/platform/). The
Haskell platform comes with the compiler and basic tools necessary to install
Copilot.

With a newly installed Haskell environment, we can easily install the latest
version of Copilot. As a regular user, just execute the following two commands
from the command line:

    cabal update
    cabal install copilot

These commands first update the list of known packages, and secondly install
the latest available version of Copilot and all of its dependencies.

After these commands successfully finish, Copilot is installed and ready to
use.


