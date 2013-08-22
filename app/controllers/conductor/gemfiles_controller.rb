require_dependency "conductor/application_controller"

module Conductor
  class GemfilesController < ApplicationController

    def show
      @gemfile = Gemfile.instance
    end

    def create
      @gemfile = Gemfile.instance
      @gemfile.content = params[:gemfile][:content]
      Rails.logger.info @gemfile.save

      redirect_to gemfile_path
    end
  end
end
