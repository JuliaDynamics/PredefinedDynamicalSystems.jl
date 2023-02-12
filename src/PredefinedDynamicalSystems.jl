"""
Module which contains pre-defined dynamical systems used in DynamicalSystems.jl
The alias `Systems` is exported by `DynamicalSystems`.

This module is provided purely as a convenience.
Nothing here is tested, nor guaranteed to be stable in future versions.
It is not recommended to use this module for anything else besides
on-the-spot demonstrative examples.

Predefined systems exist as functions that
return a `DynamicalSystem` instance. They are accessed like:
```julia
ds = PredefinedDynamicalSystems.lorenz(u0; ρ = 32.0)
```

For some systems, a Jacobian function is also defined.
The naming convention for the jacobian function is `\$(name)_jacob`.
So, for the above example we have `J = Systems.lorenz_jacob`.
"""
module PredefinedDynamicalSystems

using Reexport
@reexport using DynamicalSystemsBase
using StaticArrays

const DDS = DeterministicIteratedMap
include("discrete_famous_systems.jl")

const CDS = CoupledODEs
include("continuous_famous_systems.jl")

end
