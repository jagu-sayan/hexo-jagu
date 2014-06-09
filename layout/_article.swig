<article id="{{ post.layout }}-{{ post.slug }}" class="article" itemscope itemprop="blogPost">
	<div class="article-meta">
		<a href="{{ config.root }}{{ post.path }}" class="{{ class_name }}">
		<time datetime="<%= date_xml(post.date) %>" itemprop="datePublished">
			<div class="article-day">{{ date(post.date, 'D') }}</div>
			<div class="article-month">{{ date(post.date, 'MMM') }}</div>
		</time>
		</a>
	</div>
	<div class="article-inner">
		<header class="article-header">
			{% if (index) %}
				<h1 itemprop="name">
					<a class="article-title" href="{{ config.root }}{{ post.path }}">
						{{ post.title }}
					</a>
				</h1>
			{% else %}
				<a id="article-edit" class="icon" href="https://github.com/jagu-sayan/weblog/blob/master/source/{{ page.source }}" title="Improve this article"><a/>
				<h1 class="article-title" itemprop="name">
					{{ post.title }}
				</h1>
			{% endif %}
		</header>
		<div class="article-entry" itemprop="articleBody">
			{{ post.content }}
		</div>
	</div>
	{% if (!index) %}
		{% if (post.prev || post.next) %}
			<nav id="article-nav">
				{% if (post.prev) %}
					<a href="{{ config.root }}{{ post.prev.path }}" id="article-nav-newer" class="icon">
						<strong>Nouveau</strong>
						<div>
							{{ post.prev.title }}
						</div>
					</a>
				{% endif %}
				{% if (post.next) %}
					<a href="{{ config.root }}{{ post.next.path }}" id="article-nav-older" class="icon">
						<strong>Ancien</strong>
						<div>{{ post.next.title }}</div>
					</a>
				{% endif %}
				<div style="clear: both;"></div>
			</nav>
		{% endif %}
		{% if (post.comments && config.disqus_shortname) %}
			<section>
				<div id="disqus_thread"></div>
				<script type="text/javascript">
					var disqus_shortname = '{{config.disqus_shortname}}';
					(function() {
						var dsq = document.createElement('script');
						dsq.type = 'text/javascript';
						dsq.async = true;
						dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
						(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
					 })();
			    </script>
				<noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
			</section>
		{% endif %}
	{% endif %}
</article>
