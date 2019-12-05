class QuotesController < ApplicationController

  def index
    render json: Quote.all
  end

  def show
    quote = Quote.find(params[:id])
    render json: quote
  end

  def create
    quote = Quote.create(quote_params)
    render json: quote
  end

  def update
    quote = Quote.find(params[:id])
    quote.update(quote_params)
    render json: quote
  end

  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    render json: quote
  end


  private
  def quote_params
    api_params(:text)
  end

end
