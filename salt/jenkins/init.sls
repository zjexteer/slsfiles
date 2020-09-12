include:
  - java


base:
  pkgrepo.managed:
    - name: deb http://pkg.jenkins.ci.org/debian binary/
    - file: /etc/apt/sources.list.d/jenkins2.list
    - key_url: salt://jenkins.jenkins_key
    - require_in:
      - pkg: jenkins

  pkg.latest:
    - name: jenkins
    - refresh: True
