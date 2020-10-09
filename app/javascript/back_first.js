// 後攻で試合　先攻スコア


// 一回表
window.addEventListener("load", function() {
  var b_score = document.getElementById("backs-first-fa-score-field");
  b_score.addEventListener("input", function() {
    var b_first_fa_score = parseInt(b_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_fa_total.innerHTML = b_first_fa_score;
  })  
  // 二回表
  var b_second_score = document.getElementById("backs-second-fa-score-field");
  b_second_score.addEventListener("input", function() {
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_second_total_score = (b_first_fa_score + b_second_fa_score);
    b_fa_total.innerHTML = b_second_total_score 
  })
  
  // 三回表
  var b_third_score = document.getElementById("backs-third-fa-score-field");
  b_third_score.addEventListener("input", function() {
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_third_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score)
    b_fa_total.innerHTML = b_third_total_score 
    
  })
  // 四回表
  var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
  b_fourth_score.addEventListener("input", function() {
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_fourth_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score)
    b_fa_total.innerHTML = b_fourth_total_score 
  })

  // 五回表
  var b_fifth_score = document.getElementById("backs-fifth-fa-score-field");
  b_fifth_score.addEventListener("input", function() {
    var b_fifth_fa_score = parseInt(b_fifth_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_fifth_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score + b_fifth_fa_score)
    b_fa_total.innerHTML = b_fifth_total_score 
  })
    
  // 六回表
  var b_sixth_score = document.getElementById("backs-sixth-fa-score-field");
  b_sixth_score.addEventListener("input", function() {
    var b_sixth_fa_score = parseInt(b_sixth_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_fifth_score = document.getElementById("backs-fifth-fa-score-field");
    var b_fifth_fa_score = parseInt(b_fifth_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");

    b_sixth_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score + b_fifth_fa_score + b_sixth_fa_score)
    b_fa_total.innerHTML = b_sixth_total_score 
  })

  // 七回表
  var b_seventh_score = document.getElementById("backs-seventh-fa-score-field");
  b_seventh_score.addEventListener("input", function() {
    var b_seventh_fa_score = parseInt(b_seventh_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_fifth_score = document.getElementById("backs-fifth-fa-score-field");
    var b_fifth_fa_score = parseInt(b_fifth_score.value);
    var b_sixth_score = document.getElementById("backs-sixth-fa-score-field");
    var b_sixth_fa_score = parseInt(b_sixth_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");
  
    b_seventh_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score + b_fifth_fa_score + b_sixth_fa_score + b_seventh_fa_score)
    b_fa_total.innerHTML = b_seventh_total_score 
  })

  // 八回表
  var b_eighth_score = document.getElementById("backs-eighth-fa-score-field");
  b_eighth_score.addEventListener("input", function() {
    var b_eighth_fa_score = parseInt(b_eighth_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_fifth_score = document.getElementById("backs-fifth-fa-score-field");
    var b_fifth_fa_score = parseInt(b_fifth_score.value);
    var b_sixth_score = document.getElementById("backs-sixth-fa-score-field");
    var b_sixth_fa_score = parseInt(b_sixth_score.value);
    var b_seventh_score = document.getElementById("backs-seventh-fa-score-field");
    var b_seventh_fa_score = parseInt(b_seventh_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");
  
    b_eighth_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score + b_fifth_fa_score + b_sixth_fa_score + b_seventh_fa_score + b_eighth_fa_score)
    b_fa_total.innerHTML = b_eighth_total_score
  })

  // 九回表
  var b_ninth_score = document.getElementById("backs-ninth-fa-score-field");
  b_ninth_score.addEventListener("input", function() {
    var b_ninth_fa_score = parseInt(b_ninth_score.value);
    var b_score = document.getElementById("backs-first-fa-score-field");
    var b_first_fa_score = parseInt(b_score.value);
    var b_second_score = document.getElementById("backs-second-fa-score-field");
    var b_second_fa_score = parseInt(b_second_score.value);
    var b_third_score = document.getElementById("backs-third-fa-score-field");
    var b_third_fa_score = parseInt(b_third_score.value);
    var b_fourth_score = document.getElementById("backs-fourth-fa-score-field");
    var b_fourth_fa_score = parseInt(b_fourth_score.value);
    var b_fifth_score = document.getElementById("backs-fifth-fa-score-field");
    var b_fifth_fa_score = parseInt(b_fifth_score.value);
    var b_sixth_score = document.getElementById("backs-sixth-fa-score-field");
    var b_sixth_fa_score = parseInt(b_sixth_score.value);
    var b_seventh_score = document.getElementById("backs-seventh-fa-score-field");
    var b_seventh_fa_score = parseInt(b_seventh_score.value);
    var b_eighth_score = document.getElementById("backs-eighth-fa-score-field");
    var b_eighth_fa_score = parseInt(b_eighth_score.value);
    var b_fa_total = document.getElementById("backs-fa-total");
    
    b_ninth_total_score = (b_first_fa_score + b_second_fa_score + b_third_fa_score + b_fourth_fa_score + b_fifth_fa_score + b_sixth_fa_score + b_seventh_fa_score + b_eighth_fa_score + b_ninth_fa_score)
    b_fa_total.innerHTML = b_ninth_total_score 
  })
})
