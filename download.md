# Download & Installing
Copilot is implemented as a Embedded Domain Specific Language in Haskell.
Currently Copilot 3.14 requires a version of the Glasgow Haskell Compiler (GHC)
of at least 8.6 to be installed. The recommended installation path is via
[GHCup](https://www.haskell.org/ghcup/install/) which ensures consistency with
the rest of the haskell ecosystem. Similar in scope to rustup, pyenv and jenv.
GHCup is the main installer for the general purpose language Haskell.
It will install the necessary environment for installing Copilot.

    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    sudo apt install build-essential curl libffi-dev libffi8 libgmp-dev libgmp10 libncurses-dev libncurses6 libtinfo6 pkg-config
    ghcup install cabal --set 3.14.2.0
    ghcup install ghc --set 9.10.2
    ghcup install hls --set 2.11.0.0

With a newly installed Haskell environment, we can easily install the latest
version of Copilot. As a regular user, just execute the following two commands
from the command line:

    cabal update
    cabal install copilot

These commands first update the list of known packages, and secondly install
the latest available version of Copilot and all of its dependencies.

After these commands successfully finish, Copilot is installed and ready to
use.


## Sources
The source code to Copilot can be found at our [GitHub
project page](https://github.com/copilot-language/copilot).
