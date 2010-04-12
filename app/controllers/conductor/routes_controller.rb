module Conductor
  class RoutesController < ApplicationController
    def index
      @routes = Rails.application.routes.routes.collect do |route|
        name = Rails.application.routes.named_routes.routes.index(route).to_s
        verb = route.verb.to_s
        path = route.path
        reqs = route.requirements.empty? ? "" : route.requirements.inspect

        { :name => name, :verb => verb, :path => path, :reqs => reqs }
      end
    end
  end
end