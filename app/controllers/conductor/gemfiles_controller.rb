require_dependency "conductor/application_controller"

module Conductor
  class GemfilesController < ApplicationController

    def show
      @gemfile = Gemfile.instance
    end

    def update
    end
  end
end
