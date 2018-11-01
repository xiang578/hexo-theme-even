{# Social Links #}
{% include "./_footer/social.swig" %}

<div class="copyright">
  <span class="hosted-by-coding-pages">
    Hosted by <a href="https://pages.coding.me" style="font-weight: bold">Coding Pages</a>
  </span>
  <br/>
  <span id="busuanzi">
  <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
  PV: <span id="busuanzi_value_site_pv"></span> | UV: <span id="busuanzi_value_site_uv"></span>
  </span>
  
  <span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
    &copy; 
    {% if theme.since and theme.since != current %} 
      {{ theme.since }} - 
    {% endif %}
    {{ current }}

    <span class="heart">
      <i class="iconfont icon-heart"></i>
    </span>
    <span class="author">{{ config.author }}</span>
  </span>
</div>
