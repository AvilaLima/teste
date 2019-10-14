require 'categoria'
class Produto < Categoria
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome:'Sem nome', categoria:, preco:'0', estoque:'0')
    @nome = nome
    @categoria = super(categoria)
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
