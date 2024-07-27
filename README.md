# SupervisorD for Docker

This simple image installs supervisor, so you can plonk down your
processes in /etc/supervisor/conf.d.  It also installs a syslog
process that logs to stdout, effectively sending syslog to the Docker
logging system.  At boot, it clears /tmp for you as well.

## Install

You can install with:

    docker pull LyraPhase/supervisor

Your Dockerfile should use CMD to run `/usr/local/bin/boot-supervisord`.

## Source

This is prepared by James Cuzella (@trinitronx) and the source
can be found at [LyraPhase/docker-supervisor][1]

## Copyright

Docker scripts, etc. are
Copyright (c) 2017 John Goerzen
Copyright (c) 2024 James Cuzella
All rights reserved.

### License

For license text, see the [LICENSE][2] file.

[1]: https://github.com/LyraPhase/docker-supervisor
[2]: ./LICENSE
