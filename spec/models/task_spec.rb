require 'spec_helper'

describe Task do
  describe "Association" do
    it { should belong_to :user}
  end
end
