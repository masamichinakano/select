require 'rails_helper'

RSpec.describe Front, type: :model do
  describe '先攻で試合情報登録機能' do
    before do
      @schedule = FactoryBot.build(:schedule)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@schedule).to be_valid
    end
    it 'plan_nameが存在しないと出品できない' do
      @schedule.plan_name = ''
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Plan name can't be blank")
    end
    it 'plan_dateが存在しないと出品できない' do
      @schedule.plan_date = ''
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Plan date can't be blank")
    end
  end
end
