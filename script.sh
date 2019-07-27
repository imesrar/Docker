#!/bin/bash
service ssh restart
(/opt/gitlab/embedded/bin/runsvdir-start &) &&  gitlab-ctl reconfigure && gitlab-ctl start && tail -f /dev/null
