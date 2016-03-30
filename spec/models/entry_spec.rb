require 'rails_helper'

RSpec.describe Entry, type: :model do
  it { should belong_to :user }
  it { should belong_to :food }
  it { should validate_presence_of :amount }
end
