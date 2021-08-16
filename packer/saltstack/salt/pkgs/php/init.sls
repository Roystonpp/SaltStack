{% for package in salt ['pillar.get']('package.php') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['php'] }}
{% endfor %}