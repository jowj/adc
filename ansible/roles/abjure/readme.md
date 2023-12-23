# abjure
This role deploys media servers we use to serve the home and halo.

## why are you using swarm AND compose

I wanted to have plex handled as part of swarm, but:
a) it doesn't fucking matter becuase I don't intend to have fault
tolerance for plex; i'm not even sure it can run well in a clustered
way

b) its just much much easier to get compose working rather than
swarm. One day maybe i'd like to do that so that its a single stack to
deliver, but meh.

## notes
- If a container is failing, use docker service logs mediaserver_SERVICENAME to see the logs from the failed containers
- If you're installing this from scratch and building a new plex server then you MUST setup plex from the localhost:
    - Create an ssh tunnel like this `ssh josiah@192.168.1.120 -L 32400:localhost:32400 -N`
    - then open `localhost:32400/web` in your browser
    - If you don't add the `/web` to the end of your request, you're going to get unformatted xml and you'll think you broke something. This will cost you a lot of time :(
