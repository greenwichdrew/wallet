class DebitCardsController < ApplicationController
  before_action :set_debit_card, only: [:show, :edit, :update, :destroy]

  # GET /debit_cards
  # GET /debit_cards.json
  def index
    @debit_cards = DebitCard.all
    @total_amount =DebitCard.total
    @transaction_number = @debit_cards.length
    if @total_amount <= 50
      @bad_total = "WTF new shoes, now you can't pay the mortgage!!"
    end
  end

  # GET /debit_cards/1
  # GET /debit_cards/1.json
  def show
  end

  # GET /debit_cards/new
  def new
    @debit_card = DebitCard.new
  end

  # GET /debit_cards/1/edit
  def edit
  end

  # POST /debit_cards
  # POST /debit_cards.json
  def create
    @debit_card = DebitCard.new(debit_card_params)

    respond_to do |format|
      if @debit_card.save
        format.html { redirect_to @debit_card, notice: 'Debit card was successfully created.' }
        format.json { render :show, status: :created, location: @debit_card }
      else
        format.html { render :new }
        format.json { render json: @debit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debit_cards/1
  # PATCH/PUT /debit_cards/1.json
  def update
    respond_to do |format|
      if @debit_card.update(debit_card_params)
        format.html { redirect_to @debit_card, notice: 'Debit card was successfully updated.' }
        format.json { render :show, status: :ok, location: @debit_card }
      else
        format.html { render :edit }
        format.json { render json: @debit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debit_cards/1
  # DELETE /debit_cards/1.json
  def destroy
    @debit_card.destroy
    respond_to do |format|
      format.html { redirect_to debit_cards_url, notice: 'Debit card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debit_card
      @debit_card = DebitCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debit_card_params
      params.require(:debit_card).permit(:transaction_number, :deposits, :withdraws, :balance)
    end
end
