require 'conductor/base_generator_form'
require 'rails/generators/mailer/mailer_generator'

module Conductor
  class MailerGeneratorForm < BaseGeneratorForm
    generator_class Rails::Generators::MailerGenerator
    options :skip_namespace

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
