require_dependency "conductor/application_controller"

module Conductor
  class GemfilesController < ApplicationController

    def show
      @gemfile = Gemfile.instance
    end

    def update
      @gemfile = Gemfile.instance
      @gemfile.content = params[:gemfile][:content]
      @gemfile.save

      redirect_to gemfile_path
    end
  end
end
