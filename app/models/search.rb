require 'elasticsearch/model'
class Search < ApplicationRecord

  include Searchable
  include Elasticsearch::Model::Callbacks

  validates :description, presence: true, length: { minimum: 10 }

  def self.complete_questions(searches)
    searches.search('*').map { |r| r.description =~ /\?$/ }
    # @response = Search.search
    # @response.results.select { |r| r.description =~ /\?$/ }
  end
end
