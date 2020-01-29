console.log("woopy22!");





$('.contacts .form-control').bind('keyup', function() {
    if(allFilled()) $('.send-message').removeAttr('disabled');
});

function allFilled() {
    let filled = true;
    $('.contacts .form-control').each(function() {
        if($(this).val() == '') filled = false;
    });
    return filled;
}



let spinGame = document.getElementById('button-spin');
if(spinGame){
  spinGame.addEventListener('click', function(){
    // randomizer:
       let spin = Math.floor(Math.random() * 6) +1;
       console.log(spin);
      // display results:
      document.querySelector('.game-image').src = './img/game-img/spin-' + spin + '.png';
    });
}


// ajax for products:

//
// let flag = 0;
//
// $.ajax({
//   type: "GET",
//   url: "load-more.php",
//   // url: "travel-with-us.php",
//   data: {
//     'offset': 0,
//     'limit': 2,
//   },
//   success: function(data){
//     $('body').append(data);
//     flag += 2;
//   }
//
// });
//
// $(window).scroll(function(){
// if($(window).scrollTop()>= $(document).height() - $(window).height()){
//
//   $.ajax({
//     type: "GET",
//     url: "load-more.php",
//     // url: "travel-with-us.php",
//     data: {
//       'offset': flag,
//       'limit': 2,
//     },
//     success: function(data){
//       $('body').append(data);
//       flag += 2;
//     }
//
//   });
//
// }
//
//
// })
