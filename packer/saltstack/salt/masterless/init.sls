masterless_config:
  file.managed:
    - name: /etc/salt/minion.d/masterless.conf
    - user: root
    - group: root
    - mode: 0644
    - source: salt://masterless/masterless.conf
