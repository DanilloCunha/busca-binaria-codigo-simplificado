def busca_binaria(arr, valor)
  esquerda, direita = 0, arr.length - 1

  while esquerda <= direita
    meio = (esquerda + direita) / 2

    return meio if arr[meio] == valor
    arr[meio] < valor ? esquerda = meio + 1 : direita = meio - 1
  end

  nil
end

lista = [10, 20, 30, 40, 50]
valor_procurado = 30
resultado = busca_binaria(lista, valor_procurado)

puts resultado ? "Valor encontrado no índice #{resultado}" : "Valor não encontrado"
