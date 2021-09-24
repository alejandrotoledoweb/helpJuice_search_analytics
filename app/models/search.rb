require 'elasticsearch/model'
class Search < ApplicationRecord

  include Elasticsearch::Model

  validates :description, presence: true, length: { minimum: 10 }
end
