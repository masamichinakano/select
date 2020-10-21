require 'rails_helper'

RSpec.describe Back, type: :model do
  describe '後攻で試合情報登録機能' do
    before do
      @back = FactoryBot.build(:back)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@back).to be_valid
    end
    it 'back_first_fa_inningが存在しないと保存できない' do
      @back.back_first_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back first fa inning can't be blank")
    end
    it 'back_second_fa_inningが存在しないと保存できない' do
      @back.back_second_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back second fa inning can't be blank")
    end
    it 'back_third_fa_inningが存在しないと保存できない' do
      @back.back_third_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back third fa inning can't be blank")
    end
    it 'back_fourth_fa_inningが存在しないと保存できない' do
      @back.back_fourth_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fourth fa inning can't be blank")
    end
    it 'back_fifth_fa_inningが存在しないと保存できない' do
      @back.back_fifth_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fifth fa inning can't be blank")
    end
    it 'back_sixth_fa_inningが存在しないと保存できない' do
      @back.back_sixth_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back sixth fa inning can't be blank")
    end
    it 'back_seventh_fa_inningが存在しないと保存できない' do
      @back.back_seventh_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back seventh fa inning can't be blank")
    end
    it 'back_eighth_fa_inningが存在しないと保存できない' do
      @back.back_eighth_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back eighth fa inning can't be blank")
    end
    it 'back_ninth_fa_inningが存在しないと保存できない' do
      @back.back_ninth_fa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back ninth fa inning can't be blank")
    end
    it 'back_first_sa_inningが存在しないと保存できない' do
      @back.back_first_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back first sa inning can't be blank")
    end
    it 'back_second_sa_inningが存在しないと保存できない' do
      @back.back_second_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back second sa inning can't be blank")
    end
    it 'back_third_sa_inningが存在しないと保存できない' do
      @back.back_third_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back third sa inning can't be blank")
    end
    it 'back_fourth_sa_inningが存在しないと保存できない' do
      @back.back_fourth_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fourth sa inning can't be blank")
    end
    it 'back_fifth_sa_inningが存在しないと保存できない' do
      @back.back_fifth_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fifth sa inning can't be blank")
    end
    it 'back_sixth_sa_inningが存在しないと保存できない' do
      @back.back_sixth_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back sixth sa inning can't be blank")
    end
    it 'back_seventh_sa_inningが存在しないと保存できない' do
      @back.back_seventh_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back seventh sa inning can't be blank")
    end
    it 'back_eighth_sa_inningが存在しないと保存できない' do
      @back.back_eighth_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back eighth sa inning can't be blank")
    end
    it 'back_ninth_sa_inningが存在しないと保存できない' do
      @back.back_ninth_sa_inning = ''
      @back.valid?
      expect(@back.errors.full_messages).to include("Back ninth sa inning can't be blank")
    end
    it 'back_first_fa_inningが半角数字でないと保存できない' do
      @back.back_first_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back first fa inning is not a number")
    end
    it 'back_second_fa_inningが半角数字でないと保存できない' do
      @back.back_second_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back second fa inning is not a number")
    end
    it 'back_third_fa_inningが半角数字でないと保存できない' do
      @back.back_third_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back third fa inning is not a number")
    end
    it 'back_fourth_fa_inningが半角数字でないと保存できない' do
      @back.back_fourth_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fourth fa inning is not a number")
    end
    it 'back_fifth_fa_inningが半角数字でないと保存できない' do
      @back.back_fifth_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fifth fa inning is not a number")
    end
    it 'back_sixth_fa_inningが半角数字でないと保存できない' do
      @back.back_sixth_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back sixth fa inning is not a number")
    end
    it 'back_seventh_fa_inningが半角数字でないと保存できない' do
      @back.back_seventh_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back seventh fa inning is not a number")
    end
    it 'back_eighth_fa_inningが半角数字でないと保存できない' do
      @back.back_eighth_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back eighth fa inning is not a number")
    end
    it 'back_ninth_fa_inningが半角数字でないと保存できない' do
      @back.back_ninth_fa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back ninth fa inning is not a number")
    end

    it 'back_first_sa_inningが半角数字でないと保存できない' do
      @back.back_first_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back first sa inning is not a number")
    end
    it 'back_second_sa_inningが半角数字でないと保存できない' do
      @back.back_second_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back second sa inning is not a number")
    end
    it 'back_third_sa_inningが半角数字でないと保存できない' do
      @back.back_third_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back third sa inning is not a number")
    end
    it 'back_fourth_sa_inningが半角数字でないと保存できない' do
      @back.back_fourth_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fourth sa inning is not a number")
    end
    it 'back_fifth_sa_inningが半角数字でないと保存できない' do
      @back.back_fifth_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back fifth sa inning is not a number")
    end
    it 'back_sixth_sa_inningが半角数字でないと保存できない' do
      @back.back_sixth_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back sixth sa inning is not a number")
    end
    it 'back_seventh_sa_inningが半角数字でないと保存できない' do
      @back.back_seventh_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back seventh sa inning is not a number")
    end
    it 'back_eighth_sa_inningが半角数字でないと保存できない' do
      @back.back_eighth_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back eighth sa inning is not a number")
    end
    it 'back_ninth_sa_inningが半角数字でないと保存できない' do
      @back.back_ninth_sa_inning = "０"
      @back.valid?
      expect(@back.errors.full_messages).to include("Back ninth sa inning is not a number")
    end


  end
end
