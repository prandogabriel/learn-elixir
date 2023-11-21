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
