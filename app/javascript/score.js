// 先攻で試合　先攻スコア


// 一回表
window.addEventListener("load", function() {
  let score = document.getElementById("first-fa-score-field");
  score.addEventListener("input", function() {
    let first_fa_score = parseInt(score.value);
    let fa_total = document.getElementById("fa-total");

    fa_total.innerHTML = first_fa_score;
    
    // 二回表
    let second_score = document.getElementById("second-fa-score-field");
    second_score.addEventListener("input", function() {
      let second_fa_score = parseInt(second_score.value);
      let fa_total = document.getElementById("fa-total");

      second_score = (first_fa_score + second_fa_score);
      fa_total.innerHTML = second_score 
      
      // 三回表
      let third_score = document.getElementById("third-fa-score-field");
      third_score.addEventListener("input", function() {
        let third_fa_score = parseInt(third_score.value);
        let fa_total = document.getElementById("fa-total");
  
        third_score = (first_fa_score + second_fa_score + third_fa_score)
        fa_total.innerHTML = third_score 

        // 四回表
        let fourth_score = document.getElementById("fourth-fa-score-field");
        fourth_score.addEventListener("input", function() {
          let fourth_fa_score = parseInt(fourth_score.value);
          let fa_total = document.getElementById("fa-total");
    
          fourth_score = (third_score + fourth_fa_score)
          fa_total.innerHTML = fourth_score 

          // 五回表
          let fifth_score = document.getElementById("fifth-fa-score-field");
          fifth_score.addEventListener("input", function() {
            let fifth_fa_score = parseInt(fifth_score.value);
            let fa_total = document.getElementById("fa-total");
      
            fifth_score = (fourth_score + fifth_fa_score)
            fa_total.innerHTML = fifth_score 
            
            // 六回表
            let sixth_score = document.getElementById("sixth-fa-score-field");
            sixth_score.addEventListener("input", function() {
              let sixth_fa_score = parseInt(sixth_score.value);
              let fa_total = document.getElementById("fa-total");
        
              sixth_score = (fifth_score + sixth_fa_score)
              fa_total.innerHTML = sixth_score 
              
              // 七回表
              let seventh_score = document.getElementById("seventh-fa-score-field");
              seventh_score.addEventListener("input", function() {
                let seventh_fa_score = parseInt(seventh_score.value);
                let fa_total = document.getElementById("fa-total");
          
                seventh_score = (sixth_score + seventh_fa_score)
                fa_total.innerHTML = seventh_score 
                
                // 八回表
                let eighth_score = document.getElementById("eighth-fa-score-field");
                eighth_score.addEventListener("input", function() {
                  let eighth_fa_score = parseInt(eighth_score.value);
                  let fa_total = document.getElementById("fa-total");
            
                  eighth_score = (seventh_score + eighth_fa_score)
                  fa_total.innerHTML = eighth_score
                  
                  // 八回表
                  let ninth_score = document.getElementById("ninth-fa-score-field");
                  ninth_score.addEventListener("input", function() {
                    let ninth_fa_score = parseInt(ninth_score.value);
                    let fa_total = document.getElementById("fa-total");
              
                    ninth_score = (eighth_score + ninth_fa_score)
                    fa_total.innerHTML = ninth_score 
                  })
                })
              })
            })
          })
        })
      })
    })
  })
})

    
