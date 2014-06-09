{% if is_current("project") %}
	{% set idx = 2 %}
{% elif is_current("about") %}
	{% set idx = 3 %}
{% else %}
	{% set idx = 1 %}
{% endif %}
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<title>{{ config.title }}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="alternative" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml">
	<link rel="icon" href="/fav.png">
	<link href='http://fonts.googleapis.com/css?family=Source+Code+Pro:400,700' rel='stylesheet' type='text/css'>
	{{ css('css/main') }}
	<!--[if lt IE 9]><script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  </head>
  <body>
	<header id="header">
		<nav class="wrap">
			<ul style="float:right;">
				<li><a id="header-rss" class="icon" title="Flux RSS" href="{{ theme.rss }}"></a></li>
			</ul>
			<ul>
			{% for i in theme.menu %}
				<li>
					<a href="{{ i }}" {% if idx == loop.index %}class="over"{% endif %}>
						{{ loop.key }}
					</a>
				</li>
			{% endfor %}
				<li>{{ search_form({button: 'GO'}) }}</li>
			</ul>
		</nav>
	</header>
	<div id="content" class="wrap">
		<section>
			{{ body }}
		</section>
		<footer id="footer">
			Copyright © 2014 Jacob ZAK - <a href="/legal">Mentions Légales</a>
			- <a href="https://github.com/jagu-sayan/" id="footer-github" class="icon" title="">&nbsp;Suivez moi sur github</a>
			- <a href="#header" id="footer-up" class="icon" title="Haut de page">Haut&nbsp;de&nbsp;page </a>
		</footer>
	</div>
  </body>
</html>
