require 'rails_helper'
describe Question do
  it { should have_many :answers }
end

describe Question do
  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.author.should eq 'Billy Badass'
  end
end
