class StatisticController < ApplicationController
  
  def generate_statistics
	@statistic_type=params[:statistic_type]
	@start_date=Date.new(params[:start_date][:year].to_i,params[:start_date][:month].to_i,params[:start_date][:day].to_i)
	@end_date=Date.new(params[:end_date][:year].to_i,params[:end_date][:month].to_i,params[:end_date][:day].to_i)
	
		
	if @statistic_type == "1" #Si eligio usuarios
	@usuarios=User.where("created_at >= :start_date AND created_at <= :end_date",
  {:start_date => @start_date, :end_date => @end_date})
		render 'statistic/users_statistics'
	elsif @statistic_type == "2"
		@recaudacion=1233
		render 'statistic/income_statistics'
	end
  end

  def index
  end
end
