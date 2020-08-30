require 'rails_helper'

RSpec.describe Member, type: :model do
    subject { described_class.new({name: 'Alice Boris'}) }

    describe "Validations" do
        it 'is valid with valid attributes' do 
            expect(subject).to be_valid 
        end

        it 'is not valid if the name has already been taken' do 
            described_class.create!(name: 'Alice Boris')
            expect(subject).to_not be_valid 
        end
    
        it 'is not valid without a name' do
            subject.name = nil
            expect(subject).to_not be_valid 
        end 
    end
end
