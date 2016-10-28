class ConnectionsController < ApplicationController
  def index
    @client = client
    @connections = client.connections
    @accounts = client.accounts
  end

  def show
    @client = client
    @connection = @client.connections.find(params[:id])
  end

  def new
    @client = client
    @connection = @client.connections.build
  end

  def edit
    @client = client
    @connection = @client.connections.find(params[:id])
  end

  def create
    @client = client
    @connection = @client.connections.new(connection_params)
    
    @connection.save
    redirect_to url_for([@client, @connection])
  end

  def update
    @client = client
    @connection = @client.connections.find(params[:id])
    
    if @connection.update(connection_params)
      redirect_to url_for([@client, @connection])
    else 
      render 'edit'
    end
  end

  def destroy
    @connection = client.connections.find(params[:id])
    @connection.destroy
    
    redirect_to client_connections_path(client)
  end
  
  private 
  
  def connection_params
    params.require(:connection).permit(
      :ip_address,
      :vpn,
      :vpn_address,
      :lock_out,
      :current,
      :instructions,
      :server_type)
  end
  
  def client
    Client.find(params[:client_id])
  end
end
