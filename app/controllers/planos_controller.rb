class PlanosController < ApplicationController
  def index
    @planos = PlanoHospedagem.all
    render json: @planos
  end

  def show
    @plano = PlanoHospedagem.find(params[:id])
    render json: @plano
  end

  def create
    @plano = PlanoHospedagem.new(plano_params)
    if @plano.save
      render json: @plano, status: :created
    else
      render json: @plano.errors, status: :unprocessable_entity
    end
  end

  def update
    @plano = PlanoHospedagem.find(params[:id])
    if @plano.update(plano_params)
      render json: @plano
    else
      render json: @plano.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @plano = PlanoHospedagem.find(params[:id])
    @plano.destroy
  end

  private

  def plano_params
    params.require(:plano).permit(
      :nome,
      :espaco_em_disco,
      :transferencia,
      :contas_de_email,
      :preco
    )
  end
end
