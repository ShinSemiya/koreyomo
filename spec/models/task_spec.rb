require 'spec_helper'

describe Task do
  describe "Associations" do
    it { should belong_to :user }
  end

  describe "Validations" do
    it { should validate_presence_of :user }

    %w(icebox ready wip done).each do |state|
      it { should allow_value(state).for(:state) }
    end
    it { should_not allow_value('invalid').for(:state) }
  end
end
