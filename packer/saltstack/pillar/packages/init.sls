package:
  {%i if grains['os] == 'Ubuntu' %}
    git: git
    vim: vim
    wget: wget
    nginx: nginx
    nano: nano
    unzip: unzip
    salt-minion: salt-minion
    php: php
    python3: python36
  {% eif grains['os'] == 'Debian' %}
    chrony: chrony
    vim: vim
    tree: tree
    nginx: nginx
  {% endif  %}
