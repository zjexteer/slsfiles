include:
  - java

elasticsearch_repo:
  pkgrepo.managed:
    - humanname: elasticsearch
    - name: deb https://artifacts.elastic.co/packages/7.x/apt stable main
    - key_url: salt://elk/GPG-KEY-elasticsearch
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - require_in:
        - pkg: elasticsearch

elasticsearch:
  pkg.installed:
    - pkgs:
      - elasticsearch
      - apt-transport-https 
  service:
    - name: elasticsearch
    - running 
    - watch:
       - pkg: elasticsearch
    - enable: True


