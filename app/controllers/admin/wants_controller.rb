class Admin::WantsController < AdminController
    
    def index
        @wants = Want.all
    end
    def permit
        @want = Want.find(params[:id])
        @want.permission = 1
        @want.save!
        redirect_to admin_wants_path
    end
    def nopermit
        @want = Want.find(params[:id])
        @want.permission = 0
        @want.save!
        redirect_to admin_wants_path
    end
    layout 'admin/application'
end
