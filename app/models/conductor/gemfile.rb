require 'singleton'

module Conductor
  class Gemfile
    include Singleton

    GEMFILE_PATH = File.join(Rails.root, 'Gemfile')

    def content
      @content = File.open(GEMFILE_PATH).read
    end

    def content=(content)
      @content = content unless content.blank?
    end

    def save
      output = content
      !!File.open(GEMFILE_PATH, 'w') { |file| file.write(output) }
    end

    def to_s
      content
    end
  end
end
