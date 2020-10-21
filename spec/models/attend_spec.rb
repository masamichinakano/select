require 'rails_helper'

RSpec.describe Attend, type: :model do
  describe '出席機能' do
    before do
      @attend = FactoryBot.build(:attend)
    end

    it "全ての項目がが存在すれば保存できること" do
      expect(@attend).to be_valid
    end
    it 'attend_name_idが存在しないと保存できない' do
      @attend.attend_name_id = " "
      @attend.valid?
      expect(@attend.errors.full_messages).to include("Attend name can't be blank")
    end
  end
end
