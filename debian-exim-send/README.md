Exim 4 specifically configured to act as an outgoing SMTP service. Based on Debian Jessie.

## Environment variables

``ALLOWED_HOSTS``
  list of allowed senders, separated by semicolon. Used within an Exim hostlist,
  may include networks (``192.168.23.0/24 ; my.friend.example``).

``PRIMARY_HOST``
  Exim's ``primary_hostname`` setting; you should also be able to specify
  a hostname for your Docker container instead.


## Example

    docker run -d -p 4444:25 -e PRIMARY_HOST=example.org -e ALLOWED_HOSTS="*" rickw/debian-exim-send


## Thanks

This Docker container is based on miracle2k's exim-sender ([GitHub](https://github.com/miracle2k/dockerfiles/blob/master/exim-sender/) or [Docker Hub](https://registry.hub.docker.com/u/elsdoerfer/exim-sender/)).
