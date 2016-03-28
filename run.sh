#!/bin/sh

case "$1" in
    ssh-agent)
        # NOTE: openssh 6.9 introduces -D for running ssh-agent in the foreground.
        exec sudo -u drupal /usr/bin/ssh-agent -a ${SSH_AUTH_SOCK} 2>&1
        ;;
    *)
        exec $@;;
esac
