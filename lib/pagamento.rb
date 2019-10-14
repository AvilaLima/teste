require 'produto'
class Pagamento < Produto
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome', preco:)
    @quantidade = quantidade
    @produto = super(produto)
    @preco = preco
  end

  def calcular_valor
    @valor = @quantidade * preco
    produto.remove_estoque(@quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end

