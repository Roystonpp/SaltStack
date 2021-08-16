{% for package in salt ['pillar.get']('package.git') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['git'] }}
{% endfor %}