require 'rails_helper'

RSpec.describe Tip, type: :model do
  it { should have_many(:favorites) }
  it { should belong_to(:user) }
  it { should have_many(:favoritors) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:benefits) }
  it { should validate_presence_of(:instructions) }
end
