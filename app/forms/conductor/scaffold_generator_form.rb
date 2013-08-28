require 'conductor/base_generator_form'
require 'rails/generators/rails/scaffold/scaffold_generator'

module Conductor
  class ScaffoldGeneratorForm < BaseGeneratorForm
    generator_class Rails::Generators::ScaffoldGenerator
    options :skip_timestamps, :skip_migration, :skip_namespace, :skip_stylesheets, :skip_assets,
    		:skip_indexes, :skip_fixture, :skip_helper, :skip_jbuilder
  end
end
