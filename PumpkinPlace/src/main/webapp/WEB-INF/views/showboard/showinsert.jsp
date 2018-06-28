<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Pumk</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 부트스트랩 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}

body {
	position: relative; /* For scrollyspy */
	padding-top: 300px; /*Account for fixed navbar */
	background-color: #f8f8f8;
}

.youtubeWrap {
	position: relative;
	width: 100%;
	padding-bottom: 56.25%;
}

.youtubeWrap iframe {
	position: absolute;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/header.jspf"%>
	<!-- end MenuBar -->

	<div class="container text-center">
		<h2 class="container text-center">New Event</h2>
		<hr>

		<form accept-charset="UTF-8" action="/events" class="new_event"
			enctype="multipart/form-data" id="event_form" method="post">
			<div style="margin: 0; padding: 0; display: inline">
				<input name="utf8" type="hidden" value="&#x2713;" /> <input
					name="authenticity_token" type="hidden"
					value="V/YmJsJD2LJVCi0HoeIknFutTxFudHJCyCNYLsakG/U=" />
			</div>
			<div>

				<p>
					<label for="event_공연 포스터:">공연 포스터 <br /> <img alt="이미지"
						src=""> <input id="event_avatar" name="event[avatar]"
						type="file" /></label>
				</p>
				<p>공연을 위한 포스터를 업로드해주세요. 그렇지 않을 경우 대체 이미지가 사용됩니다.</p>
				<br />
			</div>

			<div id="en_title">
				<p>
					<label for="event_공연 이름 :">공연 제목: <input id="show_name"
						name="event" type="text" style="text-align: center; width: 200px;" /></label>
				</p>
			</div>
			<br />


			<div id="en_bands">
				<p>
					<label for="event_공연하는 밴드:">뮤지션명: <input
						id="event_band_tokens" name="event[band_tokens]" type="text"
						style="text-align: center; width: 200px;" /></label>
				</p>
			</div>
			<br />

			<div id="en_city">
				<p>
					<label for="event_도시:"> 도시: <select id="country"
						name="country"
						style="text-align: center; width: 100px; margin-left: 12px;">
							<option value="seoul">서울</option>
							<option value="kuyngki">경기</option>
							<option value="kwangju">광주</option>
							<option value="daegu">대구</option>
							<option value="busan">부산</option>
							<option value="jeju">제주</option>
					</select></label>
				</p>
			</div>
			<br />

			<div id="en_venue">
				<p>
					<label for="event_공연장:"> 공연장: <input
						id="event_venue_tokens" name="event[venue_tokens]" type="text"
						style="text-align: center; width: 200px;" /></label>
				</p>
			</div>
			<br />


			<div id="en_daytime">
				<label for="event_공연 날짜">공연 날짜 / 시간: <input type="text"
					id="startdate" placeholder="공연 시작 날짜 선택"> <input
					type="text" name="time1" value="" placeholder="시간 입력" id="time1"
					required size="8" maxlength="5"> ~ <input type="text"
					id="enddate" placeholder="공연 종료 날짜 선택"> <input type="text"
					name="time2" value="" placeholder="시간 입력" id="time2" required
					size="8" maxlength="5"></label>
			</div>
			<br />

			<div id="en_phone">
				<label for="event_연락처:">연락처: <input id="event_contact"
					name="event[contact]" type="text"
					style="text-align: center; width: 200px;" />
				</label>
			</div>
			<br />

			<div id="en_price">
				<p>
					<label for="event_현매:">가격: <input id="event_door_price"
						name="event[door_price]" type="number"
						style="text-align: center; width: 200px; margin-left: 12px;" />
					</label>
				</p>
			</div>
			<br />


			<div id="en_description">
				<label for="event_공연 상세 정보 (한글)">공연 상세 정보 </label> <br />
				<textarea id="event_info" name="event[info]" cols="100" rows="5">
</textarea>
			</div>
			<br />

			<div id="en_player">
				<p>
					<label for="event_영상:">영상: <input id="event_player"
						name="event[player]" type="text"
						style="text-align: center; width: 200px; margin-left: 12px;"
						placeholder="유투브 링크를 입력해주세요" />
					</label>
				</p>
			</div>
			<br />

			<!-- start 유투브 -->

			<div style="margin-right: 50%;">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/hcLPCxLdRjs" frameborder="0"
					allow="autoplay; encrypted-media" allowfullscreen></iframe>

				<script>
					jQuery(document)
							.ready(
									function($) {
										$(
												'iframe[src^="https://www.youtube.com/"]')
												.wrap(
														'<div class="youtubeWrap"></div>');
									});
				</script>
			</div>
			<!-- end 유투브 -->

			<script>
				//<![CDATA[
				if (typeof CKEDITOR != 'undefined') {
					CKEDITOR.replace('event_info_ko');
				}
				//]]>
			</script>
			<br /> <input class="btn btn-primary" name="commit" type="submit"
				value="등록" style="margin-bottom: 50px;" />

		</form>
		<script type="text/javascript">
			CKEDITOR.config.removePlugins = 'elementspath,print,newpage,preview,templates,save,sourcearea,htmlwriter,iframe,image,indent,filebrowser,find,fakeobjects,flash,floatingspace,listblock,richcombo';
		</script>
	</div>
	<script>
		$(function() {
			$("#startdate, #enddate").datepicker({
				dateFormat : 'yy.mm.dd'
			});
		});
	</script>
	<script type="text/javascript">
		$("#time1,time2").timepicker({

			step : 5, //시간간격 : 5분

			timeFormat : "H:i" //시간:분 으로표시

		});
	</script>






	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-4287177-24', 'doindie.co.kr');
		ga('send', 'pageview');

		// workaround of jQuery tokeninput for Korean characters
		setTimeout(function() {
			$('input[id^="token-input"]').bind('input.autocomplete',
					function() {
						$(this).trigger('keydown');
					});
		}, 500);
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.stratus({
										links : 'https://soundcloud.com/do-indie/sets/2017-10-doindie-playlist-oct',
										random : true,
										buying : false,
										stats : false
									});
							$("#stratus").attr("data-turbolinks-permanent", "");
						});
	</script>
</body>

<!-- footer -->
<footer class="container-fluid text-center">

	<div class="row">
		<!-- Add Google Maps -->
		<div id="googleMap"
			style="height: 400px; width: 500px; float: right; margin-right: 200px;"></div>
		<div class="col-sm-7 slideanim">
			<h2 class="text-center" style="margin-left: 230px;">CONTACT</h2>
			<br /> <br />
			<div class="col-sm-7 slideanim" style="margin-left: 350px;">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name"
							placeholder="Name" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email"
							placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments"
					placeholder="Comment" rows="5"></textarea>
				<br>
				<div class="row">
					<div class="col-sm-12 form-group">
						<button class="btn btn-default pull-right" type="submit">Send</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		function myMap() {
			var myCenter = new google.maps.LatLng(37.499685, 127.031535);
			var map;

			var mapProp = {
				center : myCenter,
				zoom : 12,
				scrollwheel : false,
				draggable : false,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					mapProp);
			var marker = new google.maps.Marker({
				position : myCenter
			});
			marker.setMap(map);

		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLOpelo4l6yKdCApN_d5uUehocuiw7Uuk&callback=myMap"></script>
	<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

</footer>

<!-- footer -->
<%@ include file="/WEB-INF/views/footer.jspf"%>

</html>
