require_dependency "conductor/application_controller"

module Conductor
  class GemfileController < ApplicationController

  	def index
  		@gemfile =  Gemfile.instance.to_s
    end

    def update
    end


  end
end
