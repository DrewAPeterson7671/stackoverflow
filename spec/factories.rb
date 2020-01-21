FactoryBot.define do
  factory(:question) do
    author {'Billy Badass'}
    quest_body {'Simple, right? However, what if we wanted to add other fields to the Task class such as priority? Wesd need to update every single test where we create a task. This would be a painful, error-prone process'}
  end
end
