$(function () {
					$(".dropdown").hover(function(){
				$(".dropdown-menu").fadeIn("fast");
			}
			,function(){
				$(".dropdown-menu").fadeOut("fast");
			})

	$("#myCarousel").carousel({
		//设置轮播时间
		intercal:100,
		//设置鼠标悬停是不动
		pause:'hover',
	});		//垂直居中
				//$(".carousel-control").css("line-height",$('.carousel-inner img').height()+'px');
					//$(window).resize(function(){
						//var $height=$('.carousel-inner img').eq(0).height()||
									//$('.carousel-inner img').eq(1).height()||
									//$('.carousel-inner img').eq(2).height();

							//$(".carousel-control").css("line-height",$height+'px'); 
					//});
			});