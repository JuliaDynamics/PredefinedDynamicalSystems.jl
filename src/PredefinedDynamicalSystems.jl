module PredefinedDynamicalSystems
# Use the README as the module docs
@doc let
    path = joinpath(dirname(@__DIR__), "README.md")
    include_dependency(path)
    read(path, String)
end PredefinedDynamicalSystems

const Systems = PredefinedDynamicalSystems
export Systems

using Reexport
@reexport using DynamicalSystemsBase

using StaticArrays

const DDS = DeterministicIteratedMap
include("discrete_famous_systems.jl")

const CDS = CoupledODEs
include("continuous_famous_systems.jl")

end
