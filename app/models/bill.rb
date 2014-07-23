class Bill < ActiveRecord::Base
  belongs_to :user

  validates :store, presence: true

  validates :total, presence: true, :numericality => {:greater_than => 0}

  validates_format_of :total, :with => /\A\d+(?:\.\d{0,2})?\z/, message: "should be in dollars and cents and seperated by dot  999.99"

  validate :bought_on_date_cannot_be_in_future

	  def bought_on_date_cannot_be_in_future
		  errors.add(:bought_on, "date can't be in future") if bought_on > Date.today
	  end

  before_save :upcase_store

  private
  def upcase_store
	    store.upcase!
  end

end
