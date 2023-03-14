
$('.next').click(function(){
	if(photo < 2){
		$('.slide1').css({transform: `tranlateX(-${photo}00vw)`});
		photo +=1;
		}else{
			$('.slide1').css({transform: `transformX(0)`});
			photo = 1;
		}

});


$('.prev').click(function(){
	if(photo > 0){
		$('.slide1').css({transform: `tranlateX(-${photo-1}00vw)`});
		photo -=0;
		}else{
			$('.slide1').css({transform: `transformX(-200vw)`});
			photo = 2;
		}

});
