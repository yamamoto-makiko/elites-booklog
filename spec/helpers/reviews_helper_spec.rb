require 'rails_helper'

RSpec.describe ReviewsHelper, type: :helper do
  describe "review_average" do
    it "レビューがない場合は 0 を返す" do
      expect(review_average([])).to eq 0
    end

    it "レビューがある場合は、その平均点を返す" do
      expect(review_average([create(:review, rank: 2), create(:review, rank: 4)])).to eq 3
    end
    
    it "レビューがある場合は、その平均点を返す(小数あり)" do
      expect(review_average([create(:review, rank: 3), create(:review, rank: 4)])).to eq 3.5
    end
    
    it "レビューがある場合は、その平均点を返す(小数第2位に四捨五入(切り上げ))" do
      expect(review_average([create(:review, rank: 1), create(:review, rank: 1), create(:review, rank: 2)])).to eq 1.33
    end
        
    it "レビューがある場合は、その平均点を返す(小数第2位に四捨五入(切り捨て))" do
      expect(review_average([create(:review, rank: 3), create(:review, rank: 3), create(:review, rank: 5)])).to eq 3.67
    end
  end
end