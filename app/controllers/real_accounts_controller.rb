class RealAccountsController < ApplicationController
  before_action :set_real_account, only: [:show, :edit, :update, :destroy]

  # GET /real_accounts
  # GET /real_accounts.json
  def index
    @real_accounts = RealAccount.all
  end

  # GET /real_accounts/1
  # GET /real_accounts/1.json
  def show
  end

  # GET /real_accounts/new
  def new
    @real_account = RealAccount.new
  end

  # GET /real_accounts/1/edit
  def edit
  end

  # POST /real_accounts
  # POST /real_accounts.json
  def create
    @real_account = RealAccount.new(real_account_params)

    respond_to do |format|
      if @real_account.save
        format.html { redirect_to @real_account, notice: 'Real account was successfully created.' }
        format.json { render :show, status: :created, location: @real_account }
      else
        format.html { render :new }
        format.json { render json: @real_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /real_accounts/1
  # PATCH/PUT /real_accounts/1.json
  def update
    respond_to do |format|
      if @real_account.update(real_account_params)
        format.html { redirect_to @real_account, notice: 'Real account was successfully updated.' }
        format.json { render :show, status: :ok, location: @real_account }
      else
        format.html { render :edit }
        format.json { render json: @real_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /real_accounts/1
  # DELETE /real_accounts/1.json
  def destroy
    @real_account.destroy
    respond_to do |format|
      format.html { redirect_to real_accounts_url, notice: 'Real account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_account
      @real_account = RealAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def real_account_params
      params.require(:real_account).permit(:startdate, :ip, :firstname, :lastname, :fb_email, :fb_pw, :fb_profile_link, :paypal_email, :referrer_paypal, :phone, :disbursement_date, :disbursement_amount, :skype_username, :notes)
    end
end
