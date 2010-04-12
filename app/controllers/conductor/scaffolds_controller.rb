require 'rails_generator'
require 'rails_generator/scripts/generate'

module Conductor
  class ScaffoldsController < ApplicationController
    def new
    end
  
    def create
      # TODO: Change to use the proper ScaffoldGenerator instead of this CLI hack job
      Rails::Generator::Scripts::Generate.new.run(generator_arguments)
      redirect_to(new_conductor_scaffold_url)
    end
  
  
    private
      def generator_arguments
        returning [ "scaffold" ] do |args|
          args << params[:scaffold][:name]
          args << "--skip-timestamps" if params[:scaffold][:skip_timestamps] == "1"
          args << "--skip-migration" if params[:scaffold][:skip_migration] == "1"
          args << params[:scaffold][:fields].select { |f| f[:name].blank? }.collect { |f| "#{f[:name]}:#{f[:type]}" }
        end.flatten
      end
  end
end