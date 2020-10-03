window.addEventListener("load", function() {
  let score = document.getElementById("first-fa-score-field");
  score.addEventListener("input", function() {
    let first_fa_score = parseInt(score.value);
    let fa_total = document.getElementById("fa-total");
    
    fa_total.innerHTML = first_fa_score;
    
    let second_score = document.getElementById("second-fa-score-field");
    second_score.addEventListener("input", function() {
      let second_fa_score = parseInt(second_score.value);
      let fa_total = document.getElementById("fa-total");

      total_score = (first_fa_score + second_fa_score);
      fa_total.innerHTML = total_score    
  
    })
  })
})

    
    
    
    
    
    

    // total = (first_fa_score - total_score)

    // second_fa_score.innerHTML = total_score;
