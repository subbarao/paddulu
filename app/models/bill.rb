class Bill < ActiveRecord::Base
  belongs_to :user

  validates :store, presence: true

  validates :total, :format => {:with => /\A\d+(?:\.\d{0,2})?\z/, message: "should be in dollars and cents and seperated by dot"}, :numericality => {:greater_than => 0}

  validate :bought_on_date_cannot_be_in_future

	  def bought_on_date_cannot_be_in_future
		  errors.add(:bought_on, "date can't be in future") if bought_on > Date.today
	  end

end
