{% for package in salt ['pillar.get']('package.chrony') %}
install {{ package }}:
  pkg.installed:
    - name: {{ pillar['chrony'] }}
{% endfor %}