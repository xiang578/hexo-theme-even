{%- extends "_layout.swig" -%}
{%- import '_macro/post.swig' as post_template -%}
{%- import '_macro/archive.swig' as archive_template -%}

{%- block title -%} {{ config.title }} {%- endblock -%}

{%- block content -%}
  {%- set mode = theme.mode.toLowerCase() -%}
  <section id="posts" class="posts">
    {% set howMuch = {} %}
    {% set totalCount = 0 %}
    {% for postItem in page.posts.toArray() %}
        {% set thisYear = date(postItem.date, 'YYYY') %}
        {% if !howMuch[thisYear] %}
            {% set howMuch[thisYear] = 0 %}
        {% endif %}
        {% set totalCount = totalCount + 1 %}
        {% set howMuch[thisYear] = howMuch[thisYear] + 1 %}
    {% endfor %}
    <span class="posts-count">
    这里是所有已发布的 {{totalCount}} 篇博文目录
    </span>

    <section id="archive" class="archive">
    {% if not page.prev %}
        <div class="archive-title">
          <span class="archive-post-counter">
            {{ _p("counter.archives", site.posts.length) }}
          </span>
        </div>
    {% endif %}

    {% for post in page.posts %}
        {% set year %}
        {% set post.year = date(post.date, 'YYYY') %}

        {% if post.year !== year %}
          {% set year = post.year %}
          <div class="collection-title">
            <h2 class="archive-year">{{ year }} </h2>
          </div>
        {% endif %}

      <div class="archive-post">
        <span class="archive-post-time">
            {{ date(post.date, 'MM-DD') }}
        </span>
        <span class="archive-post-title">
          <a href="{{ url_for(post.path) }}" class="archive-post-link">
            {{ post.title }}
          </a>
        </span>
      </div>
    {% endfor %}
    </section>
  </section>
{%- endblock -%}
