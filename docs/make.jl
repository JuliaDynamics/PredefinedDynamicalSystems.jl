cd(@__DIR__)

import Downloads
Downloads.download(
    "https://raw.githubusercontent.com/JuliaDynamics/doctheme/master/apply_style.jl",
    joinpath(@__DIR__, "apply_style.jl")
)
include("apply_style.jl")

using PredefinedDynamicalSystems

makedocs(
    modules = [PredefinedDynamicalSystems],
    format = Documenter.HTML(
        prettyurls = CI,
        assets = [
            asset("https://fonts.googleapis.com/css?family=Montserrat|Source+Code+Pro&display=swap", class=:css),
        ],
        collapselevel = 3,
    ),
    sitename = "PredefinedDynamicalSystems.jl",
    authors = "George Datseris",
    pages = ["index.md"],
    doctest = false,
    draft = false,
)

if CI
    deploydocs(
        repo = "github.com/JuliaDynamics/PredefinedDynamicalSystems.jl.git",
        target = "build",
        push_preview = true
    )
end
