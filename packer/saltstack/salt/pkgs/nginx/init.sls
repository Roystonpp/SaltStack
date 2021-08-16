{% for package in salt ['pillar.get']('package.nginx') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['nginx'] }}
{% endfor %}