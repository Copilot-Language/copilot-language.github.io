# Copilot runtime verification framework
Copilot is a runtime verification framework written in Haskell. It allows the
user to write programs in a simple but powerful way using a stream-based
approach.

Programs can be interpreted for testing, or translated C99 code to be
incorporated in a project, or as a standalone application. The C99 backend
ensures us that the output is constant in memory and time, making it suitable
for systems with hard realtime requirements.


## Installation
Copilot is available from
[Hackage](https://hackage.haskell.org/package/copilot), and the latest version
can be installed easily:

    cabal install copilot

Currently the Copilot 3.0 release requires GHC 8.0 or higher.

Alternatively one can download and install it from the repositories as well:

    git clone https://github.com/Copilot-Language/Copilot.git
    cd Copilot
    git submodule update --init
    make

Typically one would only go this route to develop Copilot, for regular users
the cabal method is highly recommended.
