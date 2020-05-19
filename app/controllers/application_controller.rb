class ApplicationController < ActionController::Base
    layout :set_layout

    rescue_from StandardError, with: :rescue500 #例外が発生したら、メソッドrescue500を処理する

    private def set_layout
        if params[:controller].match(%r{\A(staff|admin|customer)/})
            Regexp.last_match[1]
        else
            "customer"
        end
    end

    private def rescue500(e) #eにはExceptionオブジェクトが渡される。
        render "errors/internal_server_error", status: 500
    end
end
