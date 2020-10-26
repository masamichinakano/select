require 'rails_helper'

RSpec.describe "Attends", type: :system do
  describe '出席者登録機能' do

    before do
      @user = FactoryBot.create(:user)
      @member = FactoryBot.build(:member)
      @schedule = FactoryBot.build(:schedule)
      @attend = FactoryBot.build(:attend)
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
      # 選手登録
      expect(page).to have_content('選手登録')
      visit new_member_path
      fill_in "member_name", with: @member.name
      fill_in "member_age", with: @member.age
      select "右投げ　右打ち", from: "member_hitting"
      fill_in "member_number", with: @member.number
      check "member_outside_position_id"
      attach_file("member_image", 'public/images/dar.jpg', make_visible: true)
      expect{
      find('input[name="commit"]').click
      }.to change { Member.count }.by(1)
      expect(current_path).to eq root_path
      expect(page).to have_content("選手を登録しました。")
      visit root_path
      # スケジュールページ登録
      expect(page).to have_content('スケジュール')
      visit schedules_path
      expect(page).to have_content('試合予定登録')
      visit new_schedule_path
      fill_in "schedule[plan_name]", with: @schedule.plan_name
      fill_in "schedule[plan_match]", with: @schedule.plan_match
      fill_in "schedule[plan_date]", with: @schedule.plan_date
      fill_in "schedule[place]", with: @schedule.place
      fill_in "schedule[plan_comment]", with: @schedule.plan_comment
      expect{
      find('input[name="commit"]').click
      }.to change { Schedule.count }.by(1)
      expect(current_path).to eq root_path
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
      expect(page).to have_content("出席する")
      click_on("出席する")
      # フォームに情報を入力する
      select "山田太郎", from: "attend_attend_name_id"
      fill_in "attend_attend_comment", with: @attend.attend_comment
      # 送信するとAttendモデルのカウントが1上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Attend.count }.by(1)
      # 出席完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「出席情報を登録しました。」の文字があることを確認する
      expect(page).to have_content("出席情報を登録しました。")
      # スケジュールページへ遷移し試合予定詳細へ遷移する
      expect(page).to have_content('スケジュール')
      visit schedules_path
      expect(page).to have_content(@schedule.plan_match)
      click_on(@schedule.plan_match)
      # 出席者に選手が追加されていることを確認する
      expect(page).to have_content(@member.name)
      # 出席者コメント一覧のリンクがあることを確認する
      expect(page).to have_content("出席者コメント一覧")
      # 出席者コメント一覧へ遷移する
      click_on("出席者コメント一覧")
      # 出席者一覧が確認できる
      expect(page).to have_content("山田太郎")
      expect(page).to have_content(@attend.attend_comment)
      # 出席者詳細ページへ遷移する
      click_on(@attend.attend_comment)
      # 出席者の情報と編集、削除ボタンが確認できる
      expect(page).to have_content("山田太郎")
      expect(page).to have_content(@attend.attend_comment)
      expect(page).to have_content("編集")
      expect(page).to have_content("削除")
      expect(page).to have_content("コメント一覧に戻る")
      # 出席者を削除する
      click_on("削除")
      # トップページへ遷移し
      # 「出席情報を削除しました。」の文字があることを確認する
      expect(page).to have_content("出席情報を削除しました。")
      visit root_path
      # スケジュールページへ遷移し試合予定詳細へ遷移する
      expect(page).to have_content('スケジュール')
      visit schedules_path
      expect(page).to have_content(@schedule.plan_match)
      click_on(@schedule.plan_match)
      # 削除した出席者が存在しないか確認する
      expect(page).to have_no_content(@member.name)
    end
  end
end
