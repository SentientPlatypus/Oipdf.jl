using Oipd
using Test

@testset "Oipd.jl" begin

    @test Oipd.greet_your_package_name() == "Hello Oipd!"
    @test Oipd.greet_your_package_name() != "Hello world!"

end
