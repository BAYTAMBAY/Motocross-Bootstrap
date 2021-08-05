class AdminController < ApplicationController
    before_action :authenticate_admin!
    layout:layout_by_resource
    def layout_by_resource
        'admin/application'
    end
end