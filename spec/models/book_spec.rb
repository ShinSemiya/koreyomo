require 'spec_helper'

describe Book do
  describe "Association" do
    it { should belong_to :user}
  end
end
