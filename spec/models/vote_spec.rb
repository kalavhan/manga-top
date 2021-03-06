require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'vote' do
    it { should belong_to(:article) }
    it { should belong_to(:user) }
  end
end
