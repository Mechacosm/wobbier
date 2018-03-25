</div>
{{#customCover}}
<style type="text/css">
	{{backgroundStyle}}
</style>
{{/customCover}}
{{#games}}
<div id="gameHeader">
	<div id="gameTitle" style="text-align:center;">
		<div class="gameImage theme-primary">
			<img src="{{titleImage}}" />
		</div>
		<div class="gameTitleText">
		{{title}}
		</div>
	</div>
</div>
<div id="content">
{{#isVideo}}
<div id ="player" style="text-align: center; margin: auto">
</div>
   <script>
      // 2. This code loads the IFrame Player API code asynchronously.
      var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.
      var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '540',
          width: '960',
          videoId: '{{url}}',
{{#selectedTime}}
					playerVars: { 'start': {{startTime}} , 'end': {{endTime}} }
{{/selectedTime}}
        });
      }
    </script>
{{/isVideo}}
{{#slider}}
<div id="slider">
  <a href="#" class="control_next">></a>
  <a href="#" class="control_prev"><</a>
  <ul>
{{#images}}
    <li style="background: url('{{image}}'); background-size: cover;"></li>
{{/images}}
  </ul>  
</div>
<script src="/js/slider.js"></script>
{{/slider}}
<div class="tags">
{{#downloads}}
<a href="{{url}}" class="{{type}}">
<div class="block top left"></div>
<div class="block bottom left"></div>
<div class="block top right"></div>
<div class="block bottom right"></div><img src="/img/{{type}}.png" style="display:inline;" />{{text}}</a>
{{/downloads}}
{{#tags}}
	<div class="tag">
<div class="block top left"></div>
<div class="block bottom left"></div>
<div class="block top right"></div>
<div class="block bottom right"></div>{{tag}}</div>
{{/tags}}
<div class="clearfix"></div>
</div>

<div class="description">
<div class="block top left"></div>
<div class="block bottom left"></div>
<div class="block top right"></div>
<div class="block bottom right"></div>
{{{description}}}
</div>
</div>
{{/games}}