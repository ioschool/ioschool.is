<article class="resources">
  {% for resource in collections.resources %}
  <section
    class="{% for value in resource.classes %}{{ value }} {% endfor %}"
    {% for name, value in resource.data %}
    data-{{name}}="{{value}}"
    {% endfor %}
  >
    {% autoescape false %}
    {{ resource.contents }}
    {% endautoescape %}
  </section>
  {% endfor %}
</article>
