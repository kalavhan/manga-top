# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Article' do
    it { should validate_presence_of :title}
    it { should allow_value("Naruto").for(:title)}
    long_name = (0..51).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(long_name).for(:title) }

    it { should validate_presence_of :text }
    it { should allow_value("Description of manga").for(:text) }
    long_description = (0..601).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(long_description).for(:text) }

    it { should validate_presence_of :image }
    
    it { should have_many(:votes) }
    it { should have_many(:article_categories)}
    it { should belong_to(:author) }
  end
end
