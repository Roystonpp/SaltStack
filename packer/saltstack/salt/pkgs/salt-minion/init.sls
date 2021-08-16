{% for package in salt ['pillar.get']('package.salt-minion') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['salt-minion'] }}
{% endfor %}