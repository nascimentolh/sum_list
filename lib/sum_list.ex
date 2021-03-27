defmodule SumList do
  def call(list), do: sum(list, 0)

  #Incrementa 1 em cada elemento da lista
  def call_enum(list), do: Enum.map(list, fn elem -> elem + 1 end)

  #Retorna se um valor boleano se o elemento é maior que 5
  def call_enum_any(list), do: Enum.any?(list, fn elem -> elem > 5 end)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    IO.inspect(tail)
    sum(tail, acc)
  end
end

# [1,2,3], 0
# 1 ex: [1,2,3] hd: 1, tail [2,3], 0 -> acc = 0 + 1, sum([2,3], 1)

# Consultar sobre Recursividade e Tail Call
# https://www.notion.so/Recursividade-e-Tail-Call-Optimization-79f2a8103b174d6db58d8bea19546c0d
