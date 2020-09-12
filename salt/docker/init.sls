
docker_repo:
  pkgrepo.managed:
    - name: deb https://download.docker.com/linux/ubuntu xenial stable
    - file: /etc/apt/sources.list.d/docker.list
    - key_url: salt://docker/docker_key
    - require_in:
       - pkg: docker
docker:
  pkg.installed:
    - pkgs: 
      - docker-ce
      - apt-transport-https 
      - ca-certificates
      - gnupg-agent 
      -  software-properties-common


