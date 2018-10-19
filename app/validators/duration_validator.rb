class DurationValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add :end_date, 'must be after start date' if record.end_date && record.start_date && record.end_date < record.start_date
  end
end
