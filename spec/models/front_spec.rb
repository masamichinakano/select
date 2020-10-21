require 'rails_helper'

RSpec.describe Front, type: :model do
  describe '先攻で試合情報登録機能' do
    before do
      @front = FactoryBot.build(:front)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@front).to be_valid
    end
    it 'first_fa_inningが存在しないと保存できない' do
      @front.first_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("First fa inning can't be blank")
    end
    it 'second_fa_inningが存在しないと保存できない' do
      @front.second_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Second fa inning can't be blank")
    end
    it 'third_fa_inningが存在しないと保存できない' do
      @front.third_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Third fa inning can't be blank")
    end
    it 'fourth_fa_inningが存在しないと保存できない' do
      @front.fourth_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Fourth fa inning can't be blank")
    end
    it 'fifth_fa_inningが存在しないと保存できない' do
      @front.fifth_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Fifth fa inning can't be blank")
    end
    it 'sixth_fa_inningが存在しないと保存できない' do
      @front.sixth_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Sixth fa inning can't be blank")
    end
    it 'seventh_fa_inningが存在しないと保存できない' do
      @front.seventh_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Seventh fa inning can't be blank")
    end
    it 'eighth_fa_inningが存在しないと保存できない' do
      @front.eighth_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Eighth fa inning can't be blank")
    end
    it 'ninth_fa_inningが存在しないと保存できない' do
      @front.ninth_fa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Ninth fa inning can't be blank")
    end
    it 'first_sa_inningが存在しないと保存できない' do
      @front.first_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("First sa inning can't be blank")
    end
    it 'second_sa_inningが存在しないと保存できない' do
      @front.second_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Second sa inning can't be blank")
    end
    it 'third_sa_inningが存在しないと保存できない' do
      @front.third_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Third sa inning can't be blank")
    end
    it 'fourth_sa_inningが存在しないと保存できない' do
      @front.fourth_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Fourth sa inning can't be blank")
    end
    it 'fifth_sa_inningが存在しないと保存できない' do
      @front.fifth_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Fifth sa inning can't be blank")
    end
    it 'sixth_sa_inningが存在しないと保存できない' do
      @front.sixth_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Sixth sa inning can't be blank")
    end
    it 'seventh_sa_inningが存在しないと保存できない' do
      @front.seventh_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Seventh sa inning can't be blank")
    end
    it 'eighth_sa_inningが存在しないと保存できない' do
      @front.eighth_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Eighth sa inning can't be blank")
    end
    it 'ninth_sa_inningが存在しないと保存できない' do
      @front.ninth_sa_inning = ''
      @front.valid?
      expect(@front.errors.full_messages).to include("Ninth sa inning can't be blank")
    end
    it 'first_fa_inningが半角数字でないと保存できない' do
      @front.first_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("First fa inning is not a number")
    end
    it 'second_fa_inningが半角数字でないと保存できない' do
      @front.second_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Second fa inning is not a number")
    end
    it 'third_fa_inningが半角数字でないと保存できない' do
      @front.third_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Third fa inning is not a number")
    end
    it 'fourth_fa_inningが半角数字でないと保存できない' do
      @front.fourth_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Fourth fa inning is not a number")
    end
    it 'fifth_fa_inningが半角数字でないと保存できない' do
      @front.fifth_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Fifth fa inning is not a number")
    end
    it 'sixth_fa_inningが半角数字でないと保存できない' do
      @front.sixth_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Sixth fa inning is not a number")
    end
    it 'seventh_fa_inningが半角数字でないと保存できない' do
      @front.seventh_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Seventh fa inning is not a number")
    end
    it 'eighth_fa_inningが半角数字でないと保存できない' do
      @front.eighth_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Eighth fa inning is not a number")
    end
    it 'ninth_fa_inningが半角数字でないと保存できない' do
      @front.ninth_fa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Ninth fa inning is not a number")
    end

    it 'first_sa_inningが半角数字でないと保存できない' do
      @front.first_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("First sa inning is not a number")
    end
    it 'second_sa_inningが半角数字でないと保存できない' do
      @front.second_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Second sa inning is not a number")
    end
    it 'third_sa_inningが半角数字でないと保存できない' do
      @front.third_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Third sa inning is not a number")
    end
    it 'fourth_sa_inningが半角数字でないと保存できない' do
      @front.fourth_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Fourth sa inning is not a number")
    end
    it 'fifth_sa_inningが半角数字でないと保存できない' do
      @front.fifth_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Fifth sa inning is not a number")
    end
    it 'sixth_sa_inningが半角数字でないと保存できない' do
      @front.sixth_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Sixth sa inning is not a number")
    end
    it 'seventh_sa_inningが半角数字でないと保存できない' do
      @front.seventh_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Seventh sa inning is not a number")
    end
    it 'eighth_sa_inningが半角数字でないと保存できない' do
      @front.eighth_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Eighth sa inning is not a number")
    end
    it 'ninth_sa_inningが半角数字でないと保存できない' do
      @front.ninth_sa_inning = "０"
      @front.valid?
      expect(@front.errors.full_messages).to include("Ninth sa inning is not a number")
    end


  end
end
