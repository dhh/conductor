require 'conductor/base_generator_form'
require 'rails/generators/rails/controller/controller_generator'

module Conductor
  class ControllerGeneratorForm < BaseGeneratorForm
    generator_class Rails::Generators::ControllerGenerator
    options :skip_namespace, :skip_helper, :skip_assets

    private

    def normalize_fields
      fields.select do |field|
        !field["name"].blank?
      end.map do |field|
        field['name']
      end
    end
  end
end
