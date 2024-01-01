# mediaserver
this role deploys our media server to the target host. its not very well written and should use more ansible vars.

## notes
If a container is failing, use docker service logs mediaserver_SERVICENAME to see the logs from the failed containers
