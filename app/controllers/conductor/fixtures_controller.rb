require_dependency "conductor/application_controller"

module Conductor
  class FixturesController < ApplicationController

  	def index
      @fixtures= Fixture.files
    end
  end
end
