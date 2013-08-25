require_dependency "conductor/application_controller"

module Conductor
  class DatabasesController < ApplicationController
  	def show
      @database = Database.instance
    end

    def update
      @database = Database.instance
      @database.content = params[:database][:content]
      @database.save

      redirect_to database_path
    end
  end
end
