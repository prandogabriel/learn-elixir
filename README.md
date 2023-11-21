# Ao longo desse readme teremos algumas anotações feitas durante o estudo da linguagem

Elixir é uma linguagem de programação funcional construída sobre a máquina virtual Erlang (BEAM) e projetada para criar sistemas distribuídos e escaláveis.

### Tipos Básicos:

#### Números Inteiros e Ponto Flutuante:

```elixir
# Inteiro
numero_inteiro = 42

# Ponto flutuante
numero_ponto_flutuante = 3.14
```

#### Átomos:

```elixir
# Átomo
:elixir
```

#### Booleanos:

```elixir
verdadeiro = true
falso = false
```

#### Strings:

```elixir
string = "Olá, Elixir!"
```

### Coleções:

#### Listas:

```elixir
lista = [1, 2, 3, 4]
```

#### Tuplas:

```elixir
tupla = {:elixir, "linguagem funcional"}
```

#### Maps:

```elixir
mapa = %{nome: "Elixir", ano: 2011}
```

### Tipos Compostos:

#### Structs:

```elixir
defmodule Usuario do
  defstruct nome: "", idade: 0
end

usuario = %Usuario{nome: "Alice", idade: 30}
```

#### Enumerações:

```elixir
enum = {:ok, "sucesso"}
```

### Funções:

#### Funções Anônimas:

```elixir
quadrado = fn x -> x * x end
```

#### Módulos e Funções Nomeadas:

```elixir
defmodule Matematica do
  def quadrado(x), do: x * x
end
```

### Diferença pra OO
Em OO sempre vemos objetos e objetos podem ter métodos, como por exemplo:
```js
const a = "gabriel"

a.UpperCase();
// GABRIEL
// nesse caso a string A tem um método upper case
```

Já em programação funcional não temos esse tipo de abordagem, temos que chamar uma função que faria isso, algo como:

```elixir
a = "gabriel"

String.upcase(a)
# GABRIEL
```