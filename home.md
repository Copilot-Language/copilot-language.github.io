## News
**Release 4.7.1 -- 2026-05-07**

We are pleased to announce the release of Copilot 4.7.1, a stream-based DSL for
writing and monitoring embedded C programs, with an emphasis on correctness and
hard realtime requirements. Copilot is typically used as a high-level runtime
verification framework, and supports temporal logic (LTL, PTLTL and MTL),
clocks and voting algorithms.

Among others, Copilot is being used at the Safety Critical Avionics Systems
Branch of NASA Langley Research Center for monitoring test flights of drones.

This release introduces several improvements to Copilot:

- Fix corner cases in the treatment of special floating point numbers in the
  Bluespec backend and `copilot-theorem`.

- Fix errors in examples in `copilot-theorem` that use Z3.

- Add to `copilot-libraries` a module to perform sanity checks of Copilot
  specifications.

- Add to `copilot-libraries` a module to facilitate implementing state
  machines.

We expect those new modules to grow in the future.

The new implementation is compatible with versions of GHC from 8.6 to 9.10, as
well as with Stackage Nightly.

This release has been made possible thanks to key submissions from Ryan Scott
(Galois), and Chris Hathhorn (Galois). We are grateful to them for their timely
contributions, and for making Copilot better every day.

Details are available
[here](https://github.com/Copilot-Language/copilot/milestone/38?closed=1),
and
[here](https://github.com/Copilot-Language/copilot/releases/tag/v4.7.1).

As always, we're releasing exactly 2 months since the last release. Our next
release is scheduled for Jul 7th, 2026.

We want to remind the community that Copilot is now accepting code
contributions from external participants again. Please see the discussions and
the issues to learn how to participate.

Current emphasis is on improving the codebase in terms of performance,
stability and test coverage, removing unnecessary dependencies, hiding internal
definitions, formatting the code to meet our new coding standards, and
simplifying the Copilot interface. Users are encouraged to participate by
opening issues, asking questions, extending the implementation, and sending bug
fixes via our [github repo](https://github.com/copilot-language/copilot).

## License

Copilot is distributed under the BSD-3-Clause license, which can be found
[here](https://raw.githubusercontent.com/Copilot-Language/Copilot/master/LICENSE).

## Acknowledgements
We are grateful for NASA Contract NNL08AD13T to Galois, Inc. and the National
Institute of Aerospace, which partially supported this work.

Additionally NASA Langley contracts 80LARC17C0004 and NNL09AA00A supported
further development of Copilot.

We would like to thank Kaveh Darafsheh (NASA Langley Research Center) for his
help with testing Copilot. In addition numerous people have helped with smaller
things, reporting bugs etc. Thanks to all of them!
