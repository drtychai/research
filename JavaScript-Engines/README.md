# JavaScript Engines
Purpose: To _parse_ and _execute_ JavaScript code

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

- `Redundancy Elimination`: _"Failure to capture the side effects of an operation will lead to the removal of a typecheck
   and subsequently to a type confusion vulnerability."_


## Research Focus
### Fuzzing
Fuzzers are often divided into two (2) categores, generative- or mutation-based; however, we'll approach the topic from a further abstracted perspective. We chose to break down a *Fuzzer*, _F_ with based on:

- Explorability of Target's CFG/DFG
- Exploitability of Unsoundness

From this perspective, we can both address the _direction_ and _form_ our fuzzer takes.



