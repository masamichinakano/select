require 'rails_helper'

RSpec.describe "Historys", type: :system do
  describe '試合結果確認' do
    before do
      @user = FactoryBot.create(:user)
      @order = FactoryBot.build(:order_defence)
      @match = FactoryBot.build(:match)
      @front = FactoryBot.build(:front)
      @member = FactoryBot.build(:member)

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
      # 選手登録ページへのリンクがあることを確認する
      expect(page).to have_content('スタメン確認')
      # スタメン確認ページに移動する
      visit ofence_matchs_path
      # 保存したスターティングメンバーが表示されていることを確認する
      expect(page).to have_content(@order.match_name)
      # 先攻試合ページに移動する
      click_on(@match.match_name)
      expect(page).to have_content('先攻で試合')
      # 先攻で試合画面へ遷移
      click_on('先攻で試合')
      # フォーム情報を入力
      fill_in "first-fa-score-field", with: @front.first_fa_inning
      fill_in "second-fa-score-field", with: @front.second_fa_inning
      fill_in "third-fa-score-field", with: @front.third_fa_inning
      fill_in "fourth-fa-score-field", with: @front.fourth_fa_inning
      fill_in "fifth-fa-score-field", with: @front.fifth_fa_inning
      fill_in "sixth-fa-score-field", with: @front.sixth_fa_inning
      fill_in "seventh-fa-score-field", with: @front.seventh_fa_inning
      fill_in "eighth-fa-score-field", with: @front.eighth_fa_inning
      fill_in "ninth-fa-score-field", with: @front.ninth_fa_inning
      fill_in "first-sa-score-field", with: @front.first_sa_inning
      fill_in "second-sa-score-field", with: @front.second_sa_inning
      fill_in "third-sa-score-field", with: @front.third_sa_inning
      fill_in "fourth-sa-score-field", with: @front.fourth_sa_inning
      fill_in "fifth-sa-score-field", with: @front.fifth_sa_inning
      fill_in "sixth-sa-score-field", with: @front.sixth_sa_inning
      fill_in "seventh-sa-score-field", with: @front.seventh_sa_inning
      fill_in "eighth-sa-score-field", with: @front.eighth_sa_inning
      fill_in "ninth-sa-score-field", with: @front.ninth_sa_inning
      # 保存するとFrontモデルのカウントが１上がることを確認する
      expect{
      find('input[name="commit"]').click
      }.to change { Front.count }.by(1)
      # 保存完了するとトップページに遷移することを確認する
      expect(current_path).to eq root_path
      # 「試合結果を保存しました。」の文字があることを確認する
      expect(page).to have_content("試合結果を保存しました。")
      visit root_path
      # 試合結果ページへのリンクがあることを確認する
      expect(page).to have_content('試合結果')
      visit historys_path
      # 保存した試合結果が表示されていることを確認する
      expect(page).to have_content(@order.match_name)
      # 試合結果詳細ページに移動する
      click_on(@match.match_name)
      expect(page).to have_content('削除する')
      expect(page).to have_content('一覧へ戻る')
      # 削除する
      click_on('削除する')
      # トップページへ遷移し
      # 「試合履歴を削除しました。」の文字があることを確認する
      expect(page).to have_content("試合履歴を削除しました。")
      visit root_path
      # 試合結果ページへのリンクがあることを確認する
      expect(page).to have_content('試合結果')
      visit historys_path
      # 保存した試合結果が存在しないことを確認する
      expect(page).to have_no_content(@order.match_name)
    end
  end

end
