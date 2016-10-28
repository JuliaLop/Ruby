class PagesController < ApplicationController
    def index
        ##preguntamos si el usuario esta logeado o no
        route_to_redirect = if user_signed_in?
                            ## user signed in devuelve truo o false si esta logeado
                                user_path(current_user)
                                ## devuelve un usuario activo o con sesion activa
                            else
                                new_user_session_path
                            end
        redirect_to(route_to_redirect)
    end
    ## sign_in (user) inserta usuario
end