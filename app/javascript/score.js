// 先攻で試合　先攻スコア


// 一回表
window.addEventListener("load", function() {
  var score = document.getElementById("first-fa-score-field");
  score.addEventListener("input", function() {
    var first_fa_score = parseInt(score.value);
    var fa_total = document.getElementById("fa-total");

    fa_total.innerHTML = first_fa_score;
  })  
  // 二回表
  var second_score = document.getElementById("second-fa-score-field");
  second_score.addEventListener("input", function() {
    var second_fa_score = parseInt(second_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var fa_total = document.getElementById("fa-total");

    second_total_score = (first_fa_score + second_fa_score);
    fa_total.innerHTML = second_total_score 
  })
  
  // 三回表
  var third_score = document.getElementById("third-fa-score-field");
  third_score.addEventListener("input", function() {
    var third_fa_score = parseInt(third_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var fa_total = document.getElementById("fa-total");

    third_total_score = (first_fa_score + second_fa_score + third_fa_score)
    fa_total.innerHTML = third_total_score 
    
  })
  // 四回表
  var fourth_score = document.getElementById("fourth-fa-score-field");
  fourth_score.addEventListener("input", function() {
    var fourth_fa_score = parseInt(fourth_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fa_total = document.getElementById("fa-total");

    fourth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score)
    fa_total.innerHTML = fourth_total_score 
  })

  // 五回表
  var fifth_score = document.getElementById("fifth-fa-score-field");
  fifth_score.addEventListener("input", function() {
    var fifth_fa_score = parseInt(fifth_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fourth_score = document.getElementById("fourth-fa-score-field");
    var fourth_fa_score = parseInt(fourth_score.value);
    var fa_total = document.getElementById("fa-total");

    fifth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score)
    fa_total.innerHTML = fifth_total_score 
  })
    
  // 六回表
  var sixth_score = document.getElementById("sixth-fa-score-field");
  sixth_score.addEventListener("input", function() {
    var sixth_fa_score = parseInt(sixth_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fourth_score = document.getElementById("fourth-fa-score-field");
    var fourth_fa_score = parseInt(fourth_score.value);
    var fifth_score = document.getElementById("fifth-fa-score-field");
    var fifth_fa_score = parseInt(fifth_score.value);
    var fa_total = document.getElementById("fa-total");

    sixth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score)
    fa_total.innerHTML = sixth_total_score 
  })

  // 七回表
  var seventh_score = document.getElementById("seventh-fa-score-field");
  seventh_score.addEventListener("input", function() {
    var seventh_fa_score = parseInt(seventh_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fourth_score = document.getElementById("fourth-fa-score-field");
    var fourth_fa_score = parseInt(fourth_score.value);
    var fifth_score = document.getElementById("fifth-fa-score-field");
    var fifth_fa_score = parseInt(fifth_score.value);
    var sixth_score = document.getElementById("sixth-fa-score-field");
    var sixth_fa_score = parseInt(sixth_score.value);
    var fa_total = document.getElementById("fa-total");
  
    seventh_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score)
    fa_total.innerHTML = seventh_total_score 
  })

  // 八回表
  var eighth_score = document.getElementById("eighth-fa-score-field");
  eighth_score.addEventListener("input", function() {
    var eighth_fa_score = parseInt(eighth_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fourth_score = document.getElementById("fourth-fa-score-field");
    var fourth_fa_score = parseInt(fourth_score.value);
    var fifth_score = document.getElementById("fifth-fa-score-field");
    var fifth_fa_score = parseInt(fifth_score.value);
    var sixth_score = document.getElementById("sixth-fa-score-field");
    var sixth_fa_score = parseInt(sixth_score.value);
    var seventh_score = document.getElementById("seventh-fa-score-field");
    var seventh_fa_score = parseInt(seventh_score.value);
    var fa_total = document.getElementById("fa-total");
  
    eighth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score + eighth_fa_score)
    fa_total.innerHTML = eighth_total_score
  })

  // 八回表
  var ninth_score = document.getElementById("ninth-fa-score-field");
  ninth_score.addEventListener("input", function() {
    var ninth_fa_score = parseInt(ninth_score.value);
    var eighth_score = document.getElementById("eighth-fa-score-field");
    var eighth_fa_score = parseInt(eighth_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var third_score = document.getElementById("third-fa-score-field");
    var third_fa_score = parseInt(third_score.value);
    var fourth_score = document.getElementById("fourth-fa-score-field");
    var fourth_fa_score = parseInt(fourth_score.value);
    var fifth_score = document.getElementById("fifth-fa-score-field");
    var fifth_fa_score = parseInt(fifth_score.value);
    var sixth_score = document.getElementById("sixth-fa-score-field");
    var sixth_fa_score = parseInt(sixth_score.value);
    var seventh_score = document.getElementById("seventh-fa-score-field");
    var seventh_fa_score = parseInt(seventh_score.value);
    var fa_total = document.getElementById("fa-total");
  
    ninth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score + eighth_fa_score + ninth_fa_score)
    fa_total.innerHTML = ninth_total_score 
  })
})
        