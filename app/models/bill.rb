class Bill < ActiveRecord::Base
  belongs_to :user
  validates :store, presence: true
	#validates_numericality_of :total, only_float: true, greater_than: 0
  validates :total, :format => {:with => /\A\d+(?:\.\d{0,2})?\z/, message: "should be in dollars and cents and seperated by dot"}, :numericality => {:greater_than => 0}
end
