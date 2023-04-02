class PlanoHospedagem
  attr_accessor :id,
                :nome,
                :descricao,
                :espaco_em_disco,
                :transferencia,
                :dominios,
                :ssl,
                :preco

  def initialize(params = {})
    @id = params[:id]
    @nome = params[:nome]
    @descricao = params[:descricao]
    @espaco_em_disco = params[:espaco_em_disco]
    @transferencia = params[:transferencia]
    @dominios = params[:dominios]
    @ssl = params[:ssl]
    @preco = params[:preco]
  end

  def self.all
    [
      PlanoHospedagem.new(
        {
          id: 1,
          nome: "Hospedagem Básica",
          descricao: "Hospedagem ideal para pequenos sites",
          espaco_em_disco: "1GB",
          transferencia: "10GB/mês",
          dominios: "1",
          ssl: false,
          preco: 19.90
        }
      ),
      PlanoHospedagem.new(
        {
          id: 2,
          nome: "Hospedagem Premium",
          descricao: "Hospedagem ideal para sites de médio porte",
          espaco_em_disco: "10GB",
          transferencia: "100GB/mês",
          dominios: "5",
          ssl: true,
          preco: 99.90
        }
      ),
      PlanoHospedagem.new(
        {
          id: 3,
          nome: "Hospedagem Ilimitada",
          descricao: "Hospedagem ideal para sites de grande porte",
          espaco_em_disco: "Ilimitado",
          transferencia: "Ilimitada",
          dominios: "Ilimitados",
          ssl: true,
          preco: 299.90
        }
      )
    ]
  end

  def self.find(id)
    all.select { |p| p.id == id.to_i }.first
  end
end
