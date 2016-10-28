class ClientsController < ApplicationController
  
  def index
    @clients = Client.all
  end
  
  def show
    @client = Client.find(params[:id])
    
    checkables
  end
  
  def new
    @client = Client.new
  end
  
  def edit 
    @client = Client.find(params[:id])
    
    checkables
  end
  
  def create
    @client = Client.new(client_params)
    
    @client.save
    redirect_to @client
  end
  
  def update
    @client = Client.find(params[:id])
    
    if @client.update(client_params)
      redirect_to @client
    else
      render 'edit'
    end
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    
    redirect_to clients_path
  end
  
  private
  
  def checkables
    @checkables = [
      :type_2,
      :crownweb,
      :replication,
      :encryption,
      :mobile,
      :clinical_dashboard,
      :financial_dashboard]
  end
  
  def client_params
    params.require(:client).permit(
      :name,
      :client_code,
      :comments,
      :type_2,
      :crownweb,
      :replication,
      :encryption,
      :mobile,
      :clinical_dashboard,
      :financial_dashboard)
  end
end
