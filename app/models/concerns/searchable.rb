module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    mapping do
      # ...
    end

    def self.search(query)
      # ...
    end

    def complete_questions
      Search.search('*').map { |r| r.description =~ /\?$/ }
      # @response = Search.search
      # @response.results.select { |r| r.description =~ /\?$/ }
    end
  end
end