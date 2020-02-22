require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User' do
    it { should validate_presence_of :name }
    it { should allow_value('Michael').for(:name) }
    long_name = (0..16).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(long_name).for(:name) }
    it { should_not allow_value('f').for(:name) }

    it { should have_many(:votes) }
    it { should have_many(:created_articles) }
  end
end
