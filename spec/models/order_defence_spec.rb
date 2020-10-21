require 'rails_helper'

RSpec.describe OrderDefence, type: :model do
  describe 'スタメン登録機能' do
    before do
      @order = FactoryBot.build(:order_defence)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@order).to be_valid
    end
    it 'match_nameが存在しないと出品できない' do
      @order.match_name = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Match name can't be blank")
    end
    it 'year_idが存在しないと出品できない' do
      @order.year_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Year must be other than 0")
    end
    it 'month_idが存在しないと出品できない' do
      @order.month_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Month must be other than 0")
    end
    it 'day_idが存在しないと出品できない' do
      @order.day_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Day must be other than 0")
    end
    it 'first_name_idが存在しないと出品できない' do
      @order.first_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("First name can't be blank")
    end
    it 'second_name_idが存在しないと出品できない' do
      @order.second_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Second name can't be blank")
    end
    it 'third_name_idが存在しないと出品できない' do
      @order.third_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Third name can't be blank")
    end
    it 'fourth_name_idが存在しないと出品できない' do
      @order.fourth_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Fourth name can't be blank")
    end
    it 'fifth_name_idが存在しないと出品できない' do
      @order.fifth_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Fifth name can't be blank")
    end
    it 'sixth_name_idが存在しないと出品できない' do
      @order.sixth_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Sixth name can't be blank")
    end
    it 'seventh_name_idが存在しないと出品できない' do
      @order.seventh_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Seventh name can't be blank")
    end
    it 'eighth_name_idが存在しないと出品できない' do
      @order.eighth_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Eighth name can't be blank")
    end
    it 'ninth_name_idが存在しないと出品できない' do
      @order.ninth_name_id = ''
      @order.valid?
      expect(@order.errors.full_messages).to include("Ninth name can't be blank")
    end
    it 'first_position_idが存在しないと出品できない' do
      @order.first_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("First position must be other than 0")
    end
    it 'second_position_idが存在しないと出品できない' do
      @order.second_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Second position must be other than 0")
    end
    it 'third_position_idが存在しないと出品できない' do
      @order.third_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Third position must be other than 0")
    end
    it 'fourth_position_idが存在しないと出品できない' do
      @order.fourth_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Fourth position must be other than 0")
    end
    it 'fifth_position_idが存在しないと出品できない' do
      @order.fifth_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Fifth position must be other than 0")
    end
    it 'sixth_position_idが存在しないと出品できない' do
      @order.sixth_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Sixth position must be other than 0")
    end
    it 'seventh_position_idが存在しないと出品できない' do
      @order.seventh_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Seventh position must be other than 0")
    end
    it 'eighth_position_idが存在しないと出品できない' do
      @order.eighth_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Eighth position must be other than 0")
    end
    it 'ninth_position_idが存在しないと出品できない' do
      @order.ninth_position_id = 0
      @order.valid?
      expect(@order.errors.full_messages).to include("Ninth position must be other than 0")
    end



  end
end
