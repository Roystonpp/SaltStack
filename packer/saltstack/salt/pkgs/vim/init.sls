{% for package in salt ['pillar.get']('package.vim') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['vim'] }}
{% endfor %}