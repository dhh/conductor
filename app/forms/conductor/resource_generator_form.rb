require 'conductor/base_generator_form'
require 'rails/generators/rails/resource/resource_generator'

module Conductor
  class ResourceGeneratorForm < BaseGeneratorForm
    generator_class Rails::Generators::ResourceGenerator
    options :skip_timestamps, :skip_migration, :skip_namespaces, :skip_indexes, :skip_fixture, :skip_helper, :skip_assets
  end
end
