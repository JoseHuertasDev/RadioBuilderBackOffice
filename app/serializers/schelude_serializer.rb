class ScheduleSerializer < BaseSerializer
  attributes :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday

  %i[monday tuesday wednesday thursday friday saturday sunday].each do |day|
    define_method day do
      object.programings.where(day: day.to_s.capitalize)
    end
  end
end
