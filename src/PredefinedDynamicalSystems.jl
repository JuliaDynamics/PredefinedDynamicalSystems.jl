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

include("discrete_famous_systems.jl")
include("continuous_famous_systems.jl")

end
