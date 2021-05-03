"""
    p = avalia_poli(x, coef)

Avalia o polinômio de coeficientes `coef` no ponto x.

    p = c₀ + c₁ x + c₂ x² + c₃ x³ + … + cₙ xⁿ

Os coeficientes estão na ordem, isto é

    coef = [c₀, c₁, …, cₙ].
"""
function avalia_poli(x, coef)
  return 0.0
end

"""
    coef = chebyshev(n)

Calcula os coeficientes do polinômio de Chebyshev.
A fórmula dos polinômios é dado por

    T₀(x) = 1
    T₁(x) = x
    Tₙ₊₁(x) = 2xTₙ(x) - Tₙ₋₁(x)
"""
function chebyshev(n)
  return []
end