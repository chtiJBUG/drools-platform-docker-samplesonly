#!/bin/bash
# startContainer.sh



echo "parameter = $1"
export $CATALINA_OPT="$CATALINA_OPTS $1"
/usr/bin/supervisord
