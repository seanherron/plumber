sean:
  user.present:
    - fullname: Sean Herron
    - home: /home/sean
    - groups:
      - sudo

ssh:
  service:
    - running

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://core/files/etc/ssh/sshd_config
    - watch_in:
      - service: ssh

America/Los_Angeles:
  timezone.system:
    - utc: True
