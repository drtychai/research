# JavaScript Engines
Purpose: To _parse_ and _execute_ JavaScript code

Modern engines will contain, _at least_, the to following components:
- Parser and bytecode compiler (JS -> IR)
- Interpreter
- >=1 Just-in-Time (JIT) compiler(s)
- Runtime environment (VM)
- Garbage Collector (GC)


## JIT Optimizations
<p align="center">
  <img width=500px src="img/turbofan-pipeline3.png" alt="Turbofan JIT Pipeline">
</p>

- `Redundancy Elimination`: _"Failure to capture the side effects of an operation will lead to the removal of a typecheck
   and subsequently to a type confusion vulnerability."_


## Research Focus

[... WIP ...]   

