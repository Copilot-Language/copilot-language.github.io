## News
**Release 3.7 -- 2022-01-07**

We are pleased to announce the release of Copilot 3.7, a stream-based DSL for
writing and monitoring embedded C programs, with an emphasis on correctness and
hard realtime requirements. Copilot is typically used as a high-level runtime
verification framework, and supports temporal logic (LTL, PTLTL and MTL),
clocks and voting algorithms.

Among others, Copilot has been used at the Safety Critical Avionics Systems
Branch of NASA Langley Research Center for monitoring test flights of drones.

This new release fixes 5 bugs, and removes deprecated definitions, and
deprecates internal types.

Current emphasis is on facilitating the use with other systems, and improving
the codebase in terms of stability and test coverage. Users are encouraged to
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
