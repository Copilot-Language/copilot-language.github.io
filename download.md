# Installation

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
