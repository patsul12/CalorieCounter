require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }
  it { should have_many :entries }
  it { should have_many :users }
end
