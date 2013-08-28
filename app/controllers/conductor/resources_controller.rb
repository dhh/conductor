require 'rails/generators'

module Conductor
  class ResourcesController < ApplicationController
    def new
    end

    def create
      @form = ResourceGeneratorForm.new(params[:resource])

      if @form.valid?
        Rails.logger.info @form.command_line
        @form.run
      end

      redirect_to(new_resource_url)
    end
    
  end
end
