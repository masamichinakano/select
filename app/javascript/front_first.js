// 先攻で試合　先攻スコア


// 一回表
window.addEventListener("load", function() {
  var score = document.getElementById("first-fa-score-field");
  score.addEventListener("input", function() {
    var first_fa_score = parseInt(score.value);
    var fa_total = document.getElementById("fa-total");

    fa_total.innerHTML = first_fa_score;
  });  
  // 二回表
  var second_score = document.getElementById("second-fa-score-field");
  second_score.addEventListener("input", function() {

    var second_fa_score = parseInt(second_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var fa_total = document.getElementById("fa-total");
    console.log(second_fa_score)

    second_total_score = (first_fa_score + second_fa_score);
    fa_total.innerHTML = second_total_score;
  });
  
  // 三回表
  var third_score = document.getElementById("third-fa-score-field");
  third_score.addEventListener("input", function() {
    var third_fa_score = parseInt(third_score.value);
    var score = document.getElementById("first-fa-score-field");
    var first_fa_score = parseInt(score.value);
    var second_score = document.getElementById("second-fa-score-field");
    var second_fa_score = parseInt(second_score.value);
    var fa_total = document.getElementById("fa-total");

    third_total_score = (first_fa_score + second_fa_score + third_fa_score);
    fa_total.innerHTML = third_total_score;
    
  });
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

    fourth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score);
    fa_total.innerHTML = fourth_total_score;
  });

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

    fifth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score);
    fa_total.innerHTML = fifth_total_score;
  });
    
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

    sixth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score);
    fa_total.innerHTML = sixth_total_score;
  });

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
  
    seventh_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score);
    fa_total.innerHTML = seventh_total_score;
  });

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
  
    eighth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score + eighth_fa_score);
    fa_total.innerHTML = eighth_total_score;
  });

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
  
    ninth_total_score = (first_fa_score + second_fa_score + third_fa_score + fourth_fa_score + fifth_fa_score + sixth_fa_score + seventh_fa_score + eighth_fa_score + ninth_fa_score);
    fa_total.innerHTML = ninth_total_score;
  });

  // 後攻で試合　後攻スコア


  // 一回裏
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

});
        