using PredefinedDynamicalSystems
using Test

@test PredefinedDynamicalSystems.henon() isa DeterministicIteratedMap
