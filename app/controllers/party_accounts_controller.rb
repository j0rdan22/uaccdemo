class PartyAccountsController < ApplicationController
  before_action :set_party_account, only: [:show, :edit, :update, :destroy]

  # GET /party_accounts
  # GET /party_accounts.json
  def index
    @party_accounts = PartyAccount.all
  end

  # GET /party_accounts/1
  # GET /party_accounts/1.json
  def show
  end

  # GET /party_accounts/new
  def new
    @party_account = PartyAccount.new
  end

  # GET /party_accounts/1/edit
  def edit
  end

  # POST /party_accounts
  # POST /party_accounts.json
  def create
    @party_account = PartyAccount.new(party_account_params)

    respond_to do |format|
      if @party_account.save
        format.html { redirect_to @party_account, notice: 'Party account was successfully created.' }
        format.json { render :show, status: :created, location: @party_account }
      else
        format.html { render :new }
        format.json { render json: @party_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_accounts/1
  # PATCH/PUT /party_accounts/1.json
  def update
    respond_to do |format|
      if @party_account.update(party_account_params)
        format.html { redirect_to @party_account, notice: 'Party account was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_account }
      else
        format.html { render :edit }
        format.json { render json: @party_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_accounts/1
  # DELETE /party_accounts/1.json
  def destroy
    @party_account.destroy
    respond_to do |format|
      format.html { redirect_to party_accounts_url, notice: 'Party account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_account
      @party_account = PartyAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_account_params
      params.require(:party_account).permit(:party_id, :account_id)
    end
end
