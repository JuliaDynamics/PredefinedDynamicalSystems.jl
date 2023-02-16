# PredefinedDynamicalSystems.jl

[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaDynamics.github.io/PredefinedDynamicalSystems.jl/dev)
[![CI](https://github.com/JuliaDynamics/PredefinedDynamicalSystems.jl/workflows/CI/badge.svg)](https://github.com/JuliaDynamics/PredefinedDynamicalSystems.jl/actions?query=workflow%3ACI)
[![Package Downloads](https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/PredefinedDynamicalSystems)](https://pkgs.genieframework.com?packages=PredefinedDynamicalSystems)

Module which contains pre-defined dynamical systems that can be used by the [DynamicalSystems.jl](https://juliadynamics.github.io/DynamicalSystems.jl/dev/) library.
To install it, run `import Pkg; Pkg.add("PredefinedDynamicalSystems")`.

Predefined systems exist as functions that
return a `DynamicalSystem` instance. They are accessed like:
```julia
ds = PredefinedDynamicalSystems.lorenz(u0; ρ = 32.0)
```
The alias `Systems` is also exported as a deprecation.

**This module is provided purely as a convenience.
Nothing here is tested, nor guaranteed to be stable in future versions.
It is not recommended to use this module for anything else besides
on-the-spot demonstrative examples.**

For some systems, a Jacobian function is also defined.
The naming convention for the Jacobian function is `\$(name)_jacob`.
So, for the above example we have `J = Systems.lorenz_jacob`.

All available systems are provided in the documentation, which you can either find [online](https://juliadynamics.github.io/PredefinedDynamicalSystems.jl/dev/) or build locally by running the `docs/make.jl` file.
