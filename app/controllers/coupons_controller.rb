class CouponsController < ApplicationController
    def index 
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new; end
        # @coupon = Coupon.new({coupon_code: params[:coupon_code], store: params[:store]})
    # end

    def create
        @coupon = Coupon.create({coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store]})
        redirect_to coupon_path(@coupon)
    end
end