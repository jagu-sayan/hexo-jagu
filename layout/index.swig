{% set posts = get_posts() %}
{% for p in posts.toArray() %}
	{{ partial('_article', {post: p, index: true}) }}
{% endfor %}
{% if (page.total > 1) %}
    <nav id="page-nav">
      {{ paginator({
        prev_text: '&laquo; Prev',
        next_text: 'Next &raquo;'
      }) }}
    </nav>
{% endif %}
