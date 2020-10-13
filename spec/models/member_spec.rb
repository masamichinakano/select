require 'rails_helper'

RSpec.describe Member, type: :model do
  describe '選手登録機能' do
    before do
      @member = FactoryBot.build(:member)
    end

    it "全ての項目がが存在すれば登録できること" do
      expect(@member).to be_valid
    end

    it "nameが空では登録できないこと" do

    end

    it "emailが空では登録できないこと" do

    end

    it "passwordが空では登録できないこと" do

    end
  end
end
