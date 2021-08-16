{% for package in salt ['pillar.get']('package.unzip') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['unzip'] }}
{% endfor %}