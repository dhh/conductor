require 'singleton'

module Conductor
  class Gemfile
    include Singleton

    GEMFILE_PATH = File.join(Rails.root, 'Gemfile')

    def content
      @content = File.open(GEMFILE_PATH).read
    end

    def content=(new_content)
      @content = new_content unless new_content.blank?
    end

    def save
      !!File.open(GEMFILE_PATH, 'w') { |file| file.write(@content) }
    end

    def to_s
      content
    end
  end
end
