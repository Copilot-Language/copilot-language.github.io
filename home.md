## News
**Release 3.2.1 -- 2021-03-08**

We are very pleased to announce the release of Copilot 3.2.1, a stream-based
DSL for writing and monitoring embedded C programs, with an emphasis on
correctness and hard realtime requirements. Copilot is typically used as a
high-level runtime verification framework, and supports temporal logic (LTL,
PTLTL and MTL), clocks and voting algorithms.

Among others, Copilot has been used at the Safety Critical Avionics Systems
Branch of NASA Langley Research Center for monitoring test flights of drones.

In collaboration with the development team at Galois, Inc., the new release
introduces a backend to their [What4](https://github.com/GaloisInc/what4)
solver frontend. With this addition, it is now possible to prove properties of
Copilot specifications using. We thank Galois for their help and their
contribution.

The second big focus of this release was the documentation: the public API
documentation has been improved and completed.

Additionally, several small improvements and fixes are made in the C99 code
generator.

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
