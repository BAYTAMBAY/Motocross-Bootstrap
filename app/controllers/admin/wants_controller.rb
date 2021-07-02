class Admin::WantsController < ApplicationController
    def index
        @wants = Want.all
    end
    def permit
        @want = Want.find(params[:id])
        @want.permission = 1
        @want.save!
        redirect_to admin_wants_path
    end
end
