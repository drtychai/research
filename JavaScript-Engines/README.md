# JavaScript Engines
## Fuzzing
Target goal: _Detect unsound [runtime] behavior in the core constituents of JavaScript engines_

Fuzzers are often divided into two (2) categores, generative- or mutation-based; however, we'll approach the topic from a further abstracted perspective. We chose to break down a fuzzer, `Fz: X -> Y`, into the following broad functionalities:

- Explorability of `Y`-space (i.e., CFG/DFG)
- Exploitability of Unsoundness

From this perspective, we can both address the _direction_ and _form_ our fuzzer takes.

### Proposed Sample Transformations
- **Input**: Mutates parametric variables
- **Operation**: Mutates parametric operations
- **Insertion**: Insert newly generated IR
- **Concat**: Combine two existing programs
- **Splice**: Insert IR from part of another program
- **Type**: (Only if each CFG path is a **_type_**) Mutate blocks to improve probability of evaluating new type, using any of the above
- **Minimize**: _WIP -- Not a concern at this stage of research; subject of future work_

### Proposed Type System
FuzzIL<sup>[[0]][fuzzil-thesis][[1]][fuzzilli]</sup> defines the following types:
- Unknown
- Integer
- Float
- String
- Boolean
- Object
- Function

Drawing inspiration from FuzzIL and Rust's MIR<sup>[[2]][mir][[3]][mir-transition][[4]][mir-rfc][[5]][mir-src]</sup>, we propose a type system that facilitates both **explorability and exploitability**

#### Concept
_WIP_

## Instrumentation
Options:
1. Hook fuzzer to standard binary (JS engine's parser responsible for syntax validation)
1. Hook fuzzer as a specific point, e.g., at the Interpreter (fuzzer responsible for syntax validation)
  - This could be expanded further to perform _high-targeted fuzzing_ against, e.g., only the JIT compiler

## JS Engines: Background
**Purpose:** To _parse_ and _execute_ JavaScript code

Modern engines will contain, _at least_, the to following components:
- Parser and bytecode compiler (JS -> IR)
- Interpreter
- \>=1 Just-in-Time (JIT) compiler(s)
- Runtime environment (VM)
- Garbage Collector (GC)

## JIT Optimizations
<p align="center">
  <img width=1000px src="img/turbo-pipeline3.png" alt="Turbofan JIT Pipeline">
</p>

Vulnerabilities historically live in the _OptimizeGraph_ phase of the pipeline. Some optimizations:
- **Redundancy Elimination:** _"Failure to capture the side effects of an operation will lead to the removal of a typecheck
   and subsequently to a type confusion vulnerability."_

## To Answer
- Where do optimization occur the most?
- Which optimizations have the **worst** security history?



## References
[0][fuzzil-thesis]
S. Groß. _FuzzIL: Coverage Guided Fuzzing for JavaScript Engines_. Masters Thesis, Karlsruhe Institute of Technology, 2018.

[1][fuzzilli]
S. Groß. _A (coverage-)guided fuzzer for dynamic language interpreters_. Github Repository, Google Project Zero, 2018-Present 

[2][mir]
Rust Compiler-Team. _The MIR (Mid-level IR)_. Guide to Rustc Development, 2015.

[3][mir-transition]
Rust Compiler-Team. _Transitioning to MIR_. Rust Internals Forum, 2015.

[4][mir-rfc]
Rust Compiler-Team. _MIR Prototype_. The Rust RFC Book, 2015 

[5][mir-src]
Rust Compiler-Team. _MIR Datatypes and Passes_. Github Repository, The Rust Programming Language, 2015-Present.


[fuzzil-thesis]: https://saelo.github.io/papers/thesis.pdf
[fuzzilli]: https://github.com/googleprojectzero/fuzzilli

[mir]: https://rustc-dev-guide.rust-lang.org/mir/index.html
[mir-transition]: https://internals.rust-lang.org/t/transitioning-to-mir/2706

[mir-rfc]: https://rust-lang.github.io/rfcs/1211-mir.html#prototype
[mir-src]: https://github.com/rust-lang/rust/blob/c4fe25d8613a32dcd71e5258c22ff5685f12d4c3/compiler/rustc_middle/src/mir/mod.rs

