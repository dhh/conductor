require_dependency "conductor/application_controller"

module Conductor
  class FixturesController < ApplicationController
    def index
      @fixtures = Conductor::Fixture.all
    end

    def show
      @fixture = Conductor::Fixture.new(params[:path])
    end

  end
end
