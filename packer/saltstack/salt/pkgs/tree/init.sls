{% for package in salt ['pillar.get']('package.tree') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['tree'] }}
{% endfor %}