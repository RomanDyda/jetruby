class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #has_many :menus
end
