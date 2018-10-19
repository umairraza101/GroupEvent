module GroupEventsHelper
  def duration(group_event)
    if group_event.start_date && group_event.end_date
      pluralize((group_event.end_date - group_event.start_date).to_i,
                'Day')
    else
      'N/A'
    end
  end
end
