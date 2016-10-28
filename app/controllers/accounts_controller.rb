class AccountsController < ApplicationController
  def index
    @client = client
    @accounts = client.accounts
  end

  def show
    @client = client
    @account = client.accounts.find(params[:id])
  end

  def new
    @client = client
    @account = client.accounts.build
  end

  def edit
    @client = client
    @account = client.accounts.find(params[:id])
  end

  def create
    @client = client
    @account = client.accounts.new(account_params)
    
    @account.save
    redirect_to client_connections_path(@client)
  end

  def update
    @client = client
    @account = @client.accounts.find(params[:id])
    
    if @account.update(account_params)
      redirect_to client_connections_path(@client)
    else
      render 'edit'
    end
  end

  def destroy
    @account = client.accounts.find(params[:id])
    client_id = client.id
    @account.destroy
    
    redirect_to client_connections_path(client_id)
  end
  
  private
  
  def account_params
    params.require(:account).permit(
      :username,
      :password,
      :domain)
  end
  
  def client
    Client.find(params[:client_id])
  end
end
