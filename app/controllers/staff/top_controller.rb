class Staff::TopController < ApplicationController
    def index
        # raise 例外処理の確認が終わったら消しておく
        render action: "index" #(省略可能)
    end
end
