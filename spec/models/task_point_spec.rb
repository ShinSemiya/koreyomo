require 'spec_helper'

describe TaskPoint do
  describe "Association" do
    it { should belong_to :task}
    it { should validate_presence_of :point}
  end
end
