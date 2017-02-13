module ReviewsHelper

  def review_average(reviews)
    # reviews.length > 0 ? reviews.inject(0) {|sum, r| sum + r.rank} / reviews.length : 0
    # reviews.length > 0 ? reviews.inject(0) {|sum, r| sum + r.rank} / reviews.length.to_f : 0
    # round前のカッコ位置不明
    reviews.length > 0 ? (reviews.inject(0) {|sum, r| sum + r.rank} / reviews.length.to_f).round(2) : 0
  end
end