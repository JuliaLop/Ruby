require "rails_helper"

RS.describe User, type: :model do
    #creamos dos usuarios uno lo guarda en base de datos y otros le construye pero no quiero que le guarde
    let(:user) { create(:user) }
    let(:invalid_user) { build(:user) } ## no lo guarda en base de datos usado para pruebas de incorre
    # to
    context "with messages" do
        let(:user) { create(:user_with_messages) }
        
    it "has a valid factory" do
        expect(user).to be_valid # coge el usuario y comprueba si lo puedes guardar en base
        ## datos si no fuese valido pues fallaria
    end
    
    it "has a unique email" do
        invalid_user.email = user.email
        expect(invalid_user).not_to be_valid
        ## compruebo usuario
    end
    
    it "has a nick present" do
        invalid_user.nick = nil
        expect(invalid_user).not_to be_valid
    end
end
