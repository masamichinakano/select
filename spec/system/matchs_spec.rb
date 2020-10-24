require 'rails_helper'

RSpec.describe "Matchs", type: :system do
  describe 'スタメン登録機能' do
    before do
      @user = FactoryBot.create(:user)
      @member = FactoryBot.build(:member)
      @order = FactoryBot.build(:order_defence)
    end
    it 'スターティングメンバー登録' do
      # ログインする
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 選手登録ページへのリンクがあることを確認する
      expect(page).to have_content('選手登録')
      # 登録ページに移動する
      visit new_member_path
      # フォームに情報を入力する
      fill_in "member_name", with: @member.name
      fill_in "member_age", with: @member.age
      select "右投げ　右打ち", from: "member_hitting"
      fill_in "member_number", with: @member.number
      check "member_outside_position_id"
      attach_file("member_image", 'public/images/dar.jpg', make_visible: true)
      # 送信するとTweetモデルのカウントが1上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Member.count }.by(1)
      # 投稿完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「投稿が完了しました」の文字があることを確認する
      expect(page).to have_content("選手を登録しました。")
      visit root_path
      # 選手登録ページへのリンクがあることを確認する
      expect(page).to have_content('スタメン設定')
      # スタメン設定ページに移動する
      visit matchs_path
      # フォームに情報を入力する
      fill_in "order_defence_match_name", with: @order.match_name
      select "２０２０", from: "order_defence_year_id"
      select "１", from: "order_defence_month_id"
      select "１", from: "order_defence_day_id"
      select "山田太郎", from: "order_defence_first_name_id"
      select "投", from: "order_defence_first_position_id"
      select "山田太郎", from: "order_defence_second_name_id"
      select "投", from: "order_defence_second_position_id"
      select "山田太郎", from: "order_defence_third_name_id"
      select "投", from: "order_defence_third_position_id"
      select "山田太郎", from: "order_defence_fourth_name_id"
      select "投", from: "order_defence_fourth_position_id"
      select "山田太郎", from: "order_defence_fifth_name_id"
      select "投", from: "order_defence_fifth_position_id"
      select "山田太郎", from: "order_defence_sixth_name_id"
      select "投", from: "order_defence_sixth_position_id"
      select "山田太郎", from: "order_defence_seventh_name_id"
      select "投", from: "order_defence_seventh_position_id"
      select "山田太郎", from: "order_defence_eighth_name_id"
      select "投", from: "order_defence_eighth_position_id"
      select "山田太郎", from: "order_defence_ninth_name_id"
      select "投", from: "order_defence_ninth_position_id"
      # 送信するとTweetモデルのカウントが1上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Match.count }.by(1)
      # 保存完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「スタメンを登録しました。」の文字があることを確認する
      expect(page).to have_content("スタメンを登録しました。")
      visit root_path
    end
  end
end
