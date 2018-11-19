require 'rails_helper'

RSpec.describe PlacesController, type: :controller do
  context '#index' do
    subject { described_class.new.index.count }
    context 'without rows' do
      it { is_expected.to eq 0 }
    end

    context 'with one row' do
      let!(:place) { FactoryBot.create(:place) }
      it { is_expected.to eq 1 }
    end
  end
end
