require 'elasticsearch/model'
class Search < ApplicationRecord

  include Searchable

  validates :description, presence: true, length: { minimum: 10 }
end
