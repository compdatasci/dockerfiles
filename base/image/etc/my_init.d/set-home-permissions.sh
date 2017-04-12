#!/bin/bash
# User can pass e.g. --env HOST_UID=1003 so that UID in the container matches
# with the UID on the host. This is useful for Linux users, Mac and Windows
# already do transparent mapping of shared volumes.
if [ "$HOST_UID" ]; then
    usermod -u $HOST_UID $DOCKER_USER
fi
if [ "$HOST_GID" ]; then
    groupmod -g $HOST_GID $DOCKER_GROUP
fi