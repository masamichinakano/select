require 'rails_helper'

RSpec.describe "Members", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @member = FactoryBot.build(:member)
  end
  context '選手登録ができるとき' do
    it '選手登録' do
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
      # 「選手を登録しました」の文字があることを確認する
      expect(page).to have_content("選手を登録しました。")
    end
  end
end

RSpec.describe "Members", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @member = FactoryBot.build(:member)
  end
  context '選手登録ができないとき'do
    it '選手登録' do
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
      fill_in "member_name", with: " "
      fill_in "member_age", with: " "
      select "選択してください", from: "member_hitting"
      fill_in "member_number", with: " "
      check "member_outside_position_id"
      attach_file("member_image", "public/images/dar.jpg", make_visible: true)
      # 登録を押してもユーザーモデルのカウントは上がらないことを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Member.count }.by(0)
      # 新規登録ページへ戻されることを確認する
      expect(current_path).to eq "/members"
    end
  end
end

RSpec.describe "Members", type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context '選手一覧、各ポジション別の表示ができる'do
    it '選手一覧表示' do
      # ログインする
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 選手一覧ページへのリンクがあることを確認する
      expect(page).to have_content('選手一覧')
      # 選手一覧ページに移動する
      visit player_members_path
      # 投手、捕手、内野手、外野手、選手一覧、選手登録、トップへ戻るページに遷移するボタンが表示されている
      expect(page).to have_content("投手")
      visit pitch_members_path
      expect(page).to have_content("捕手")
      visit catch_members_path
      expect(page).to have_content("内野手")
      visit inside_members_path
      expect(page).to have_content("外野手")
      visit outside_members_path
      expect(page).to have_content("選手登録")
      visit player_members_path
      expect(page).to have_content("トップへ戻る")
    end
  end
end
RSpec.describe "Members", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @member = FactoryBot.build(:member)
  end
  context '選手詳細確認、編集、削除' do
    it '選手詳細' do
      # ログインする
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 選手登録
      expect(page).to have_content('選手登録')
      visit new_member_path
      fill_in "member_name", with: @member.name
      fill_in "member_age", with: @member.age
      select "右投げ　右打ち", from: "member_hitting"
      fill_in "member_number", with: @member.number
      check "member_outside_position_id"
      image_path = Rails.root.join('public/images/dar.jpg')
      attach_file("member_image", image_path, make_visible: true)
      expect{
      find('input[name="commit"]').click
      }.to change { Member.count }.by(1)
      expect(current_path).to eq root_path
      expect(page).to have_content("選手を登録しました。")
      # 選手一覧ページへのリンクがあることを確認する
      expect(page).to have_content('選手一覧')
      # 選手一覧ページに移動する
      visit player_members_path
      # binding.pry
      # 選手を選択
      expect(
      all(".more")[1].hover
      ).to have_link '山田太郎', href: member_path(@member)
      # 選手詳細へ遷移
      visit member_path(@member)

    end
  end
end
