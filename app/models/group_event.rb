class GroupEvent < ActiveRecord::Base
  include ActiveModel::Validations

  DRAFT = 'draft'
  PUBlISHED = 'published'
  STATES = [DRAFT, PUBlISHED].freeze

  validates_presence_of :name, :description, :location,
                        :start_date, :end_date, if: :published?
  validates_with DurationValidator

  def published?
    PUBlISHED == state
  end
end