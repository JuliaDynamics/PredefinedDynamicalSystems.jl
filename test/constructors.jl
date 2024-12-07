

@testset "Discrete Systems Default Constructors" begin
    systems = [
        :towel,
        :standardmap,
        :coupledstandardmaps,
        :henon,
        :logistic,
        :pomeau_manneville,
        :manneville_simple,
        :arnoldcat,
        :grebogi_map,
        :nld_coupled_logistic_maps,
        :tentmap,
        :betatransformationmap,
        :rulkovmap,
        :ikedamap,
        :ulam,
        ]
        for system in systems
            @test @eval PredefinedDynamicalSystems.$system() isa DeterministicIteratedMap
        end
end

@testset "Continous Systems Default Constructors" begin
    systems = [
        :lorenz,
        :chua,
        :roessler,
        :double_pendulum,
        :henonheiles,
        :qbh,
        :lorenz96,
        :duffing,
        :shinriki,
        :gissinger,
        :rikitake,
        :nosehoover,
        :antidots,
        :ueda,
        :magnetic_pendulum,
        :fitzhugh_nagumo,
        :more_chaos_example,
        :thomas_cyclical,
        :stommel_thermohaline,
        :lorenz84,
        :lorenzdl,
        :coupled_roessler,
        :kuramoto,
        :sprott_dissipative_conservative,
        :hodgkinhuxley,
        :vanderpol,
        :lotkavolterra,
        :hindmarshrose,
        :hindmarshrose_two_coupled,
        :stuartlandau_oscillator,
        :forced_pendulum,
        :riddled_basins,
        :morris_lecar,
        :sakarya,
        :lorenz_bounded,
        :swinging_atwood,
        :guckenheimer_holmes,
        :halvorsen,
        :multispecies_competition,
        :hyper_roessler,
        :hyper_lorenz,
        :hyper_qi,
        :hyper_jha,
        :hyper_wang,
        :hyper_xu,
        :hyper_bao,
        :hyper_cai,
        :hyper_lu,
        :hyper_pang,
    ]
    for system in systems
        @test @eval PredefinedDynamicalSystems.$system() isa CoupledODEs
    end
end
