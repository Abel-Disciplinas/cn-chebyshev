using Test

include("main.jl")

@testset "Testes básicos" begin
  @testset "Avalia polinômio" begin
    for x in range(-4, 4, length=21)
      @test avalia_poli(x, [1, -4, 3]) ≈ 1 - 4x + 3x^2
      @test avalia_poli(x, [3]) == 3
      @test avalia_poli(x, [1, 0, 1, 0, 1]) ≈ 1 + x^2 + x^4
    end
  end

  @testset "Função Chebyshev" begin
    @test chebyshev(0) == [1]
    @test chebyshev(1) == [0, 1]
    @test chebyshev(2) == [-1, 0, 2]
    @test chebyshev(3) == [0, -3, 0, 4]
    @test chebyshev(4) == [1, 0, -8, 0, 8]
  end

  @testset "Erros" begin
    @test_throws ErrorException avalia_poli(1.0, [])
    for n = -5:-1
      @test_throws ErrorException chebyshev(n)
    end
    for n = 41:45
      @test_throws ErrorException chebyshev(n)
    end
  end
end

@testset "Testes avançados - parte 1" begin
  for x in range(-1, 1, length=21), n = 0:10
    a = chebyshev(n)
    p(x) = cos(n * acos(x))
    @test p(x) ≈ avalia_poli(x, a) atol=1e-14 * 2^n
  end
end

@testset "Testes avançados - parte 2" begin
  for x in range(-1, 1, length=21), n = 11:40
    a = chebyshev(n)
    p(x) = cos(n * acos(x))
    @test p(x) ≈ avalia_poli(x, a) atol=1e-14 * 2^n
  end
end