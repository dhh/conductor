require 'conductor/base_generator_form'
require 'rails/generators/rails/model/model_generator'

module Conductor
  class ModelGeneratorForm < BaseGeneratorForm
    generator_class Rails::Generators::ModelGenerator
    options :skip_timestamps, :skip_migration, :skip_namespaces, :skip_indexes, :skip_fixture
  end
end
