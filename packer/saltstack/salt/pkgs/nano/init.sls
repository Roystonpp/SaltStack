{% for package in salt ['pillar.get']('package.nano') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['nano'] }}
{% endfor %}