require 'active_support/core_ext/class/attribute'
require 'rails/generators'

module Conductor
  class BaseGeneratorForm
    include ActiveModel::Model

    DATA_TYPES = %w(string text integer decimal float time timestamp date datetime binary boolean primary_key references)

    class_attribute :generator_class
    attr_accessor :name, :fields, :options

    validates :name, presence: true

    def self.generator_class(generator_class)
      self.generator_class = generator_class
    end

    def self.options(*opts)
      opts.each do |option|
        define_method(option) do
          options[option]
        end

        define_method("#{option}=") do |value|
          options[option] = value
        end
      end
    end

    def run
      # capture(:stdout) do
        self.generator_class.start(normalize_args, destination_root: Rails.root)
      # end
    end

    def command_line
      "rails generate #{generator_class.generator_name} #{normalize_args.join(" ")}"
    end

    private
    def normalize_args
      [name] + normalize_fields + normalize_options
    end

    def normalize_options
      options.select do |key, value|
        value == "1"
      end.keys.map do |opt|
        "--#{opt.to_s.gsub("_", "-")}"
      end
    end

    def normalize_fields
      fields.select do |field|
        !field["name"].blank?
      end.map do |field|
        "#{field['name']}:#{field['type']}"
      end
    end

    def options
      @options ||= {}
    end
  end
end
