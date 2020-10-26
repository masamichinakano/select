require 'rails_helper'

RSpec.describe "Schedules", type: :system do
  describe '試合予定登録' do

    before do
      @user = FactoryBot.create(:user)
      @schedule = FactoryBot.build(:schedule)
    end
    it '試合予定の登録ができる時' do
      # ログインする
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # スケジュールページへのリンクがあることを確認する
      expect(page).to have_content('スケジュール')
      # 試合予定一覧ページに移動する
      visit schedules_path
      # 試合予定の登録ボタンがあることを確認する
      expect(page).to have_content('試合予定登録')
      visit new_schedule_path
      # フォームに情報を入力する
      fill_in "schedule[plan_name]", with: @schedule.plan_name
      fill_in "schedule[plan_match]", with: @schedule.plan_match
      fill_in "schedule[plan_date]", with: @schedule.plan_date
      fill_in "schedule[place]", with: @schedule.place
      fill_in "schedule[plan_comment]", with: @schedule.plan_comment
      # 送信するとScheduleモデルのカウントが1上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Schedule.count }.by(1)
      # 保存完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「試合予定を登録しました。」の文字があることを確認する
      expect(page).to have_content("試合予定を登録しました。")
      visit root_path
      # スケジュールページへのリンクがあることを確認する
      expect(page).to have_content('スケジュール')
      # 試合予定一覧ページに移動する
      visit schedules_path
      # 試合予定一覧に保存した試合予定があることを確認する
      expect(page).to have_content(@schedule.plan_match)
      # 試合予定詳細ページに移動する
      click_on(@schedule.plan_match)
      # 試合予定項目が表示されていることを確認する
      expect(page).to have_content(@schedule.plan_name)
      expect(page).to have_content(@schedule.plan_match)
      expect(page).to have_content("2020-02-02")
      expect(page).to have_content(@schedule.place)
      expect(page).to have_content(@schedule.plan_comment)
    end
  end

end
