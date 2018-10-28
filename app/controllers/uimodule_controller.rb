class UimoduleController < ApplicationController
  def list
  	@stats_small = UimoduleStat.where("business_segment_id = ?", 1)
  	@stats_medium = UimoduleStat.where("business_segment_id = ?", 2)
  	@stats_large = UimoduleStat.where("business_segment_id = ?", 3)

  	@segment_sum_small = @stats_small.sum(:segment_actuality)
  	@segment_sum_medium = @stats_medium.sum(:segment_actuality)
  	@segment_sum_large = @stats_large.sum(:segment_actuality)
  end

  def show
  end
end
