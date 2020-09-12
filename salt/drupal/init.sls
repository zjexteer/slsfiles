Drupal_Image:
  docker_image.present:
    - name: drupal
    - tag: latest

{% if grains['localhost'] == 'salt-minion' %}

drupal:
  docker_container.running:
    - image: drupal
    - port_bindings:
        - salt-minion_ip:8010:80 #change the ip and port to your machine ip

{% elif grains['localhost'] == 'salt-minion2' %}

drupal:
  docker_container.running:
    - image: drupal
    - port_bindings:
        - salt-minion2_ip:8010:80 # #change the ip and port to your machine ip


{% endif %}

