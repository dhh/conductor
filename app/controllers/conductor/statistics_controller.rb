require 'rails/code_statistics'

STATS_DIRECTORIES = [
  %w(Controllers        app/controllers),
  %w(Helpers            app/helpers),
  %w(Models             app/models),
  %w(Libraries          lib/),
  %w(APIs               app/apis),
  %w(Integration\ tests test/integration),
  %w(Functional\ tests  test/functional),
  %w(Unit\ tests        test/unit)
].collect { |name, dir| [ name, "#{Rails.root}/#{dir}" ] }.select { |name, dir| File.directory?(dir) }

module Conductor
  class StatisticsController < ApplicationController
    def index
      @stats = Conductor::CodeStatistics.new(*STATS_DIRECTORIES)
    end
  end
end
