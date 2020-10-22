require 'rails_helper'

RSpec.describe "Members", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @member = FactoryBot.build(:member)
  end
  context '選手登録ができるとき' do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('選手登録')
      # 投稿ページに移動する
      visit new_member_path
      # フォームに情報を入力する
      fill_in "member_name", with: @member.name
      fill_in "member_age", with: @member.age
      select "右投げ　右打ち", from: "member_hitting"
      fill_in "member_number", with: @member.number
      check "member_outside_position_id"
      attach_file("member_image", 'public/images/test_image.png')
      # 送信するとTweetモデルのカウントが1上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Member.count }.by(1)
      # 投稿完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「投稿が完了しました」の文字があることを確認する
      expect(page).to have_content("選手を登録しました。")
    end
  end
  context 'ツイート投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      # 新規投稿ページへのリンクがない
    end
  end
end
