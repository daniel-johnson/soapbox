class Source < ActiveRecord::Base
  has_and_belongs_to_many :opinions

  validates :content, :uri, presence: true
  before_save :is_uri?

  def is_uri?
    http = URI.regexp(['http']).match(self.content)
    https = URI.regexp(['https']).match(self.content)
    self.uri = (http || https).present?
  end
end
