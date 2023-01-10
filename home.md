## News
**Release 3.13 -- 2023-01-07**

We are pleased to announce the release of Copilot 3.12, a stream-based DSL for
writing and monitoring embedded C programs, with an emphasis on correctness and
hard realtime requirements. Copilot is typically used as a high-level runtime
verification framework, and supports temporal logic (LTL, PTLTL and MTL),
clocks and voting algorithms.

Among others, Copilot has been used at the Safety Critical Avionics Systems
Branch of NASA Langley Research Center for monitoring test flights of drones.

This release fixes 4 bugs in `copilot-core` and `copilot-c99`. We have also
removed 2 deprecated modules and one dependency. The new release has been
published on hackage, as well as github.

This release also continues to use our new software engineering process
designed to meet the requirements to obtain NASA's Class D software
classification. Details are available
[here](https://github.com/Copilot-Language/copilot/milestone/17?closed=1).

Current emphasis is on improving the codebase in terms of stability and test
coverage, removing unnecessary dependencies, hiding internal definitions, and
formatting the code to meet our new coding standards. Users are encouraged to
participate by opening issues and asking questions via our [github
repo](https://github.com/copilot-language/copilot).

## Licence
Copilot is distributed under the BSD-3-Clause licence, which can be found
[here](https://raw.githubusercontent.com/Copilot-Language/Copilot/master/LICENSE).

## Acknowledgements
We are grateful for NASA Contract NNL08AD13T to Galois, Inc. and the National
Institute of Aerospace, which partially supported this work.

Additionally NASA Langley contracts 80LARC17C0004 and NNL09AA00A supported
further development of Copilot.

We would like to thank Kaveh Darafsheh (NASA Langley Research Center) for his
help with testing Copilot. In addition numerous people have helped with smaller
things, reporting bugs etc. Thanks to all of them!
