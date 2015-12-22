class UserBenchesController < ApplicationController
  before_action :set_user_bench, only: [:show, :edit, :update, :destroy]

  # GET /user_benches
  def index
    @user_benches = UserBench.order(id: :desc).page(params[:page]).per(10)
    @total = UserBench.sum(:bench_time)
  end

  # POST /user_benches
  def create
    @user_bench = UserBench.new(user_bench_params)

    @user_bench.save
    render nothing: true
  end

  private
    # Only allow a trusted parameter "white list" through.
    def user_bench_params
      {
        user: params[:user],
        bench_time: params[:time]
      }
    end
end
