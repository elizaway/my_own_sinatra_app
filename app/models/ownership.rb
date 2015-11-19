class Ownership < ActiveRecord::Base
  belongs_to :owner
  belongs_to :jewel
end
