class Admin::TopController < Admin::Base
    def index
        render action: "index" #(省略可能)
    end
end
