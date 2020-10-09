// 後攻で試合　後攻スコア


// 一回裏
window.addEventListener("load", function() {
  var b_sa_score = document.getElementById("backs-first-sa-score-field");
  b_sa_score.addEventListener("input", function() {
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_total.innerHTML = b_sa_first_fa_score;
  })  
  // 二回裏
  var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
  b_sa_second_score.addEventListener("input", function() {
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_second_total_score = (b_sa_first_fa_score + b_sa_second_fa_score);
    b_sa_total.innerHTML = b_sa_second_total_score 
  })
  
  // 三回裏
  var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
  b_sa_third_score.addEventListener("input", function() {
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_third_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score)
    b_sa_total.innerHTML = b_sa_third_total_score 
    
  })
  // 四回裏
  var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
  b_sa_fourth_score.addEventListener("input", function() {
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_fourth_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score)
    b_sa_total.innerHTML = b_sa_fourth_total_score 
  })

  // 五回裏
  var b_sa_fifth_score = document.getElementById("backs-fifth-sa-score-field");
  b_sa_fifth_score.addEventListener("input", function() {
    var b_sa_fifth_fa_score = parseInt(b_sa_fifth_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_fifth_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score + b_sa_fifth_fa_score)
    b_sa_total.innerHTML = b_sa_fifth_total_score 
  })
    
  // 六回裏
  var b_sa_sixth_score = document.getElementById("backs-sixth-sa-score-field");
  b_sa_sixth_score.addEventListener("input", function() {
    var b_sa_sixth_fa_score = parseInt(b_sa_sixth_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_fifth_score = document.getElementById("backs-fifth-sa-score-field");
    var b_sa_fifth_fa_score = parseInt(b_sa_fifth_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");

    b_sa_sixth_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score + b_sa_fifth_fa_score + b_sa_sixth_fa_score)
    b_sa_total.innerHTML = b_sa_sixth_total_score 
  })

  // 七回裏
  var b_sa_seventh_score = document.getElementById("backs-seventh-sa-score-field");
  b_sa_seventh_score.addEventListener("input", function() {
    var b_sa_seventh_fa_score = parseInt(b_sa_seventh_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_fifth_score = document.getElementById("backs-fifth-sa-score-field");
    var b_sa_fifth_fa_score = parseInt(b_sa_fifth_score.value);
    var b_sa_sixth_score = document.getElementById("backs-sixth-sa-score-field");
    var b_sa_sixth_fa_score = parseInt(b_sa_sixth_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");
  
    b_sa_seventh_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score + b_sa_fifth_fa_score + b_sa_sixth_fa_score + b_sa_seventh_fa_score)
    b_sa_total.innerHTML = b_sa_seventh_total_score 
  })

  // 八回裏
  var b_sa_eighth_score = document.getElementById("backs-eighth-sa-score-field");
  b_sa_eighth_score.addEventListener("input", function() {
    var b_sa_eighth_fa_score = parseInt(b_sa_eighth_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_fifth_score = document.getElementById("backs-fifth-sa-score-field");
    var b_sa_fifth_fa_score = parseInt(b_sa_fifth_score.value);
    var b_sa_sixth_score = document.getElementById("backs-sixth-sa-score-field");
    var b_sa_sixth_fa_score = parseInt(b_sa_sixth_score.value);
    var b_sa_seventh_score = document.getElementById("backs-seventh-sa-score-field");
    var b_sa_seventh_fa_score = parseInt(b_sa_seventh_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");
  
    b_sa_eighth_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score + b_sa_fifth_fa_score + b_sa_sixth_fa_score + b_sa_seventh_fa_score + b_sa_eighth_fa_score)
    b_sa_total.innerHTML = b_sa_eighth_total_score
  })

  // 九回裏
  var b_sa_ninth_score = document.getElementById("backs-ninth-sa-score-field");
  b_sa_ninth_score.addEventListener("input", function() {
    var b_sa_ninth_fa_score = parseInt(b_sa_ninth_score.value);
    var b_sa_score = document.getElementById("backs-first-sa-score-field");
    var b_sa_first_fa_score = parseInt(b_sa_score.value);
    var b_sa_second_score = document.getElementById("backs-second-sa-score-field");
    var b_sa_second_fa_score = parseInt(b_sa_second_score.value);
    var b_sa_third_score = document.getElementById("backs-third-sa-score-field");
    var b_sa_third_fa_score = parseInt(b_sa_third_score.value);
    var b_sa_fourth_score = document.getElementById("backs-fourth-sa-score-field");
    var b_sa_fourth_fa_score = parseInt(b_sa_fourth_score.value);
    var b_sa_fifth_score = document.getElementById("backs-fifth-sa-score-field");
    var b_sa_fifth_fa_score = parseInt(b_sa_fifth_score.value);
    var b_sa_sixth_score = document.getElementById("backs-sixth-sa-score-field");
    var b_sa_sixth_fa_score = parseInt(b_sa_sixth_score.value);
    var b_sa_seventh_score = document.getElementById("backs-seventh-sa-score-field");
    var b_sa_seventh_fa_score = parseInt(b_sa_seventh_score.value);
    var b_sa_eighth_score = document.getElementById("backs-eighth-sa-score-field");
    var b_sa_eighth_fa_score = parseInt(b_sa_eighth_score.value);
    var b_sa_total = document.getElementById("backs-sa-total");
  
    b_sa_ninth_total_score = (b_sa_first_fa_score + b_sa_second_fa_score + b_sa_third_fa_score + b_sa_fourth_fa_score + b_sa_fifth_fa_score + b_sa_sixth_fa_score + b_sa_seventh_fa_score + b_sa_eighth_fa_score + b_sa_ninth_fa_score)
    b_sa_total.innerHTML = b_sa_ninth_total_score 
  })
})
