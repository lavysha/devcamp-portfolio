module Placeholder 
    extend ActiveSupport::Concern

    def self.imagegenerator(height:,width:)
        "http://placehold.it/#{height}X#{width}"
    end
end