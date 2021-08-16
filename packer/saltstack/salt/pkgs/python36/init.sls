{% for package in salt ['pillar.get']('package.python36') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['python36'] }}
{% endfor %}