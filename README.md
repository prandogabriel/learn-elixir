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

### Imutabilidade
Nunca conseguimos mudar um valor na memória, sempre precisamos criar um novo valor, se quisermos que uma variavel mude de valor, temos que reatribuir, o erlang irá criar uma nova variável na memória com o novo valor e quando o antigo não estiver mais sendo utilizado irá limpar a memória.

```elixir 
total = 1900
defmodule Mutante do
  def mutar(valor) do
    valor = 1
    IO.puts valor # Aqui será exibido 1 ou 1900?
    valor
  end
end
Mutante.mutar(total)
IO.puts total # E aqui? 1 ou 1900?
total = Mutante.mutar(total)
IO.puts total # E agora, 1 ou 1900?

# saida:
# 1
# 1900
# 1
# 1
```

No primeiro IO.puts, dentro da função Mutante.mutar, será exibido 1! Temos uma variável definida como argumento e estamos alterando a sua referência. Antes ela apontava para uma parte da memória que continha 1900, agora aponta pra outra que contém 1.

Já no segundo IO.puts, depois da execução da função, deveria ser exibido 1, já que mudamos a referência dentro da função, certo? Não! Na verdade, fora da função, total continua apontado para 1900, a referência não pode ser alterada em outro lugar.

Para mudar o valor de total o que fazemos é mudar sua referência, como mostrado no último IO.puts, que agora sim mostrará total como 1. Então ser imutável não quer dizer que o valor nunca mudará, mas sim que eles está protegido de mudanças externas.

### Listas

Em Elixir, as listas são estruturas de dados encadeadas e imutáveis. Isso significa que uma lista é uma sequência de elementos, onde cada elemento contém um valor e uma referência ao próximo elemento na lista. Aqui estão alguns pontos-chave sobre as listas em Elixir:

### Estrutura de Lista Encadeada:

- **Encadeamento Linear:** Os elementos de uma lista são organizados linearmente, com cada elemento apontando para o próximo. A última célula geralmente aponta para um valor especial, indicando o final da lista.

- **Imutabilidade:** As listas em Elixir são imutáveis, o que significa que, uma vez criada, uma lista não pode ser modificada. Operações que parecem modificar uma lista na verdade criam uma nova lista com as alterações desejadas.

### Adição de Elementos:

- **Barato para Adicionar no Início:** Adicionar um elemento ao início de uma lista é uma operação de tempo constante (O(1)), tornando-a eficiente. Isso ocorre porque a nova lista criada aponta para a lista original, sem a necessidade de copiar todos os elementos.

- **Custo Elevado para Adicionar no Final:** Adicionar um elemento ao final de uma lista requer percorrer toda a lista existente, resultando em um custo proporcional ao tamanho da lista (O(n)), onde "n" é o número de elementos na lista. Isso ocorre porque uma nova célula precisa ser criada para o novo elemento e todas as outras células precisam ser copiadas para a nova lista.

### Exemplo:

```elixir
# Adicionando no início (eficiente)
nova_lista = [1 | [2, 3, 4]]

# Adicionando no final (ineficiente)
lista_original = [1, 2, 3, 4]
nova_lista = lista_original ++ [5]
```

A preferência por adicionar elementos no início é uma característica importante ao lidar com listas em Elixir, especialmente em situações em que a performance é crucial. Se a ordem dos elementos não importar, adicionar no início é uma escolha mais eficiente. Se a ordem é importante e a adição frequente de elementos ao final é necessária, outras estruturas de dados, como mapas ou conjuntos, podem ser mais adequadas.