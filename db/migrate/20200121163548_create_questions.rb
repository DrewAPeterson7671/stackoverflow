class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    t.string :author
    t.string :quest_body
    t.timestamp :created_at
    t.timestamp :updated_at


    t.timestamps()
    end
  end
end
