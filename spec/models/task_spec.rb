require 'spec_helper'

describe Task do
  describe "Association" do
    it { should belong_to :user}
  end

  describe "#progress_point" do
    let(:big_point) { 3 }
    let(:small_point) { 1 }
    let(:task){ create(:task) }

    context 'when progress is exists' do
      before do
        task.task_points << build(:task_point, point: big_point)
        task.task_points << build(:task_point, point: small_point)
      end

      it { expect(task.progress_point).to eq(big_point + small_point) }
    end

    context 'when progress is NOT exists' do
      it { expect(task.progress_point).to eq 0 }
    end
  end
end
