require 'rails_helper'

RSpec.describe Member, type: :model do
  describe '選手登録機能' do
    before do
      @member = FactoryBot.build(:member)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@member).to be_valid
    end
    it 'nemeが存在しないと保存できない' do
      @member.name = ''
      @member.valid?
      expect(@member.errors.full_messages).to include("Name can't be blank")
    end
    it 'ageが存在しないと保存できない' do
      @member.age = ''
      @member.valid?
      expect(@member.errors.full_messages).to include("Age can't be blank")
    end
    it 'ageが全角であると保存できない' do
      @member.age = '１２'
      @member.valid?
      expect(@member.errors.full_messages).to include("Age is invalid")
    end

    it 'style_idが存在しないと保存できない' do
      @member.style_id = 0
      @member.valid?
      expect(@member.errors.full_messages).to include("Style must be other than 0")
    end
    it 'numberが存在しないと保存できない' do
      @member.number = ''
      @member.valid?
      expect(@member.errors.full_messages).to include("Number can't be blank")
    end
    it 'numberが全角であると保存できない' do
      @member.number = '１２'
      @member.valid?
      expect(@member.errors.full_messages).to include("Number is invalid")
    end

    it 'imageが存在しないと保存できない' do
      @member.image = nil
      @member.valid?
      expect(@member.errors.full_messages).to include("Image can't be blank")
    end



  end
end
