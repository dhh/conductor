require 'singleton'

module Conductor
  class Database
    include Singleton

    DATABASE_PATH = File.join(Rails.root, 'config', 'database.yml')

    def content
      @content = File.open(DATABASE_PATH).read
    end

    def content=(new_content)
      @content = new_content unless new_content.blank?
    end

    def save
      !!File.open(DATABASE_PATH, 'w') { |file| file.write(@content) }
    end

    def to_s
      content
    end
  end
end