require 'rails_generator'
require 'rails_generator/scripts/generate'

class Conductor::ScaffoldsController < Conductor::BaseController
  def new
  end
  
  def create
    Rails::Generator::Scripts::Generate.new.run(generator_arguments)
    redirect_to(new_conductor_scaffold_url)
  end
  
  
  private
    def generator_arguments
      returning [ "scaffold" ] do |args|
        args << params[:scaffold][:name]
        args << params[:scaffold][:fields].select { |f| f[:name].blank? }.collect { |f| "#{f[:name]}:#{f[:type]}" }
      end.flatten
    end
end