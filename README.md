# Chebyshev

O exercício envolve implementar duas funções:
- `avalia_poli(x, a)` que avalia o polinômio com coeficientes `a` no ponto `x`. Nada muito avançado, basta ver a definição.
- `chebyshev(n)` para calcular coeficientes do polinômio de Chebyshev.
Aqui é onde fica mais interessante, porque é preciso usar a definição recursiva: `T₀(x) = 1`, `T₁(x) = x` e `Tₙ₊₁(x) = 2xTₙ(x) - Tₙ₋₁(x)`. Os testes verificam até o grau 40.

## Observações

- O código deve estar indentado. Vale 10 pontos (de 100). Existe indentação automática, não há desculpa.
- Obviamente, não é pra escrever os termos de Chebyshev manualmente. Contará como errado
- Se `a` for um vetor vazio em `avalia_poli`, gere um erro.
- Se `n < 0` em `chebyshev`, gere um erro.
- Se `n > 40` em `chebyshev`, gere um erro.