// 後攻で試合　後攻スコア


// 一回裏
window.addEventListener("load", function() {
  var sa_score = document.getElementById("first-sa-score-field");
  sa_score.addEventListener("input", function() {
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_total.innerHTML = sa_first_fa_score;
  })  
  // 二回裏
  var sa_second_score = document.getElementById("second-sa-score-field");
  sa_second_score.addEventListener("input", function() {
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_second_total_score = (sa_first_fa_score + sa_second_fa_score);
    sa_total.innerHTML = sa_second_total_score 
  })
  
  // 三回裏
  var sa_third_score = document.getElementById("third-sa-score-field");
  sa_third_score.addEventListener("input", function() {
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_third_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score)
    sa_total.innerHTML = sa_third_total_score 
    
  })
  // 四回裏
  var sa_fourth_score = document.getElementById("fourth-sa-score-field");
  sa_fourth_score.addEventListener("input", function() {
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_fourth_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score)
    sa_total.innerHTML = sa_fourth_total_score 
  })

  // 五回裏
  var sa_fifth_score = document.getElementById("fifth-sa-score-field");
  sa_fifth_score.addEventListener("input", function() {
    var sa_fifth_fa_score = parseInt(sa_fifth_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_fourth_score = document.getElementById("fourth-sa-score-field");
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_fifth_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score + sa_fifth_fa_score)
    sa_total.innerHTML = sa_fifth_total_score 
  })
    
  // 六回裏
  var sa_sixth_score = document.getElementById("sixth-sa-score-field");
  sa_sixth_score.addEventListener("input", function() {
    var sa_sixth_fa_score = parseInt(sa_sixth_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_fourth_score = document.getElementById("fourth-sa-score-field");
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_fifth_score = document.getElementById("fifth-sa-score-field");
    var sa_fifth_fa_score = parseInt(sa_fifth_score.value);
    var sa_total = document.getElementById("sa-total");

    sa_sixth_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score + sa_fifth_fa_score + sa_sixth_fa_score)
    sa_total.innerHTML = sa_sixth_total_score 
  })

  // 七回裏
  var sa_seventh_score = document.getElementById("seventh-sa-score-field");
  sa_seventh_score.addEventListener("input", function() {
    var sa_seventh_fa_score = parseInt(sa_seventh_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_fourth_score = document.getElementById("fourth-sa-score-field");
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_fifth_score = document.getElementById("fifth-sa-score-field");
    var sa_fifth_fa_score = parseInt(sa_fifth_score.value);
    var sa_sixth_score = document.getElementById("sixth-sa-score-field");
    var sa_sixth_fa_score = parseInt(sa_sixth_score.value);
    var sa_total = document.getElementById("sa-total");
  
    sa_seventh_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score + sa_fifth_fa_score + sa_sixth_fa_score + sa_seventh_fa_score)
    sa_total.innerHTML = sa_seventh_total_score 
  })

  // 八回裏
  var sa_eighth_score = document.getElementById("eighth-sa-score-field");
  sa_eighth_score.addEventListener("input", function() {
    var sa_eighth_fa_score = parseInt(sa_eighth_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_fourth_score = document.getElementById("fourth-sa-score-field");
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_fifth_score = document.getElementById("fifth-sa-score-field");
    var sa_fifth_fa_score = parseInt(sa_fifth_score.value);
    var sa_sixth_score = document.getElementById("sixth-sa-score-field");
    var sa_sixth_fa_score = parseInt(sa_sixth_score.value);
    var sa_seventh_score = document.getElementById("seventh-sa-score-field");
    var sa_seventh_fa_score = parseInt(sa_seventh_score.value);
    var sa_total = document.getElementById("sa-total");
  
    sa_eighth_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score + sa_fifth_fa_score + sa_sixth_fa_score + sa_seventh_fa_score + sa_eighth_fa_score)
    sa_total.innerHTML = sa_eighth_total_score
  })

  // 九回裏
  var sa_ninth_score = document.getElementById("ninth-sa-score-field");
  sa_ninth_score.addEventListener("input", function() {
    var sa_ninth_fa_score = parseInt(sa_ninth_score.value);
    var sa_score = document.getElementById("first-sa-score-field");
    var sa_first_fa_score = parseInt(sa_score.value);
    var sa_second_score = document.getElementById("second-sa-score-field");
    var sa_second_fa_score = parseInt(sa_second_score.value);
    var sa_third_score = document.getElementById("third-sa-score-field");
    var sa_third_fa_score = parseInt(sa_third_score.value);
    var sa_fourth_score = document.getElementById("fourth-sa-score-field");
    var sa_fourth_fa_score = parseInt(sa_fourth_score.value);
    var sa_fifth_score = document.getElementById("fifth-sa-score-field");
    var sa_fifth_fa_score = parseInt(sa_fifth_score.value);
    var sa_sixth_score = document.getElementById("sixth-sa-score-field");
    var sa_sixth_fa_score = parseInt(sa_sixth_score.value);
    var sa_seventh_score = document.getElementById("seventh-sa-score-field");
    var sa_seventh_fa_score = parseInt(sa_seventh_score.value);
    var sa_eighth_score = document.getElementById("eighth-sa-score-field");
    var sa_eighth_fa_score = parseInt(sa_eighth_score.value);
    var sa_total = document.getElementById("sa-total");
  
    sa_ninth_total_score = (sa_first_fa_score + sa_second_fa_score + sa_third_fa_score + sa_fourth_fa_score + sa_fifth_fa_score + sa_sixth_fa_score + sa_seventh_fa_score + sa_eighth_fa_score + sa_ninth_fa_score)
    sa_total.innerHTML = sa_ninth_total_score 
  })
})
