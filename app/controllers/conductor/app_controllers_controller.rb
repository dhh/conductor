require 'rails/generators'

module Conductor
  class AppControllersController < ApplicationController
    def new
      @page_title = 'Controllers'
    end

    def create
      @form = ControllerGeneratorForm.new(params[:app_controller])

      if @form.valid?
        Rails.logger.info @form.command_line
        @form.run
      end

      redirect_to(new_app_controller_url)
    end
    
  end
end
