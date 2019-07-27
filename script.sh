#!/bin/bash
service ssh restart
cp gitlab.rb /etc/gitlab/gitlab.rb
(/opt/gitlab/embedded/bin/runsvdir-start &) &&  gitlab-ctl reconfigure && gitlab-ctl start && tail -f /dev/null
