require "rails_helper"

RSpec.describe Message, type: :model do
    let(:message) { create(:message) }
    
    it "has a valid factory" do
        expect(message).to be_valid
    end
     ## el mensaje tiene un contenido 
    it "has a content present" do
        message.content = nil
        expect(message).not_to be_valid
    end
    ## esta asociado a un usuario
    
    it "has an user" do
        expect(message.user).to be_valid
    end
    
end