from diagrams import Cluster, Diagram, Edge
from diagrams.digitalocean.compute import Droplet
from diagrams.onprem.network import Internet
from diagrams.generic.network import VPN
from diagrams.onprem.container import Docker
from diagrams.onprem.proxmox import Pve
from diagrams.onprem.compute import Server
from diagrams.generic.blank import Blank

hub_attr = {"shape": "point", "width": "0.01"}  # nearly invisible
graph_attr = {"splines": "spline"}

with Diagram("cloud services", show=False, direction="TB"):
    """ this describes effective access / internet direction between services i share with others
    """
    internet = Internet()
    vpn = VPN("tailnet")
    chat = Droplet("mattermost.awful.club")

    with Cluster("tail-services"):
        services = [
            Docker("requests.halo.jowj.net"),
            Docker("rss.halo.jowj.net"),
            Docker("plex"),
            Docker("the hoard"),
            Docker("calibre"),
            Docker("gitea"),
        ]

    internet >> chat
    internet >> vpn >> services

with Diagram("home devices", show=False, direction="LR", graph_attr=graph_attr):
    """this describes which services are hosted where in my home network"""

    with Cluster("proxmox"):
        hosts = [
            Pve("seraph"),
            Pve("exgod"),
            Pve("demiurge"),
        ]

    archon = Server("archon")
    with Cluster("archon"):
        services = [
            Docker("requests"),
            Docker("rss"),
            Docker("git"),
        ]

    highsea = Server("high-sea")
    with Cluster("high-sea"):
        # here we nest subclusters that aren't actually REAL
        # just to control presentation in the final png.
        with Cluster("docker cluster"):
            hub = Blank("highsea stack", **hub_attr)
            with Cluster("", graph_attr={"rank": "same"}):
                sonarr = Docker("sonarr")
                radarr = Docker("radarr")
                lidarr = Docker("lidarr")
            with Cluster("", graph_attr={"rank": "same"}):
                bazarr = Docker("bazarr")
                readarr = Docker("readarr")
                sabnzbd = Docker("sabnzbd")
            with Cluster("", graph_attr={"rank": "same"}):
                hydra2 = Docker("hydra2")
            for top, mid, bot in [
                (sonarr, radarr, lidarr),
                (bazarr, readarr, sabnzbd),
                (hydra2, Blank(""), Blank("")),
            ]:
                top - Edge(style="invis") - mid
                mid - Edge(style="invis") - bot

    lair = Server("Lair")
    with Cluster("abjure stack", direction="TB"):
        hub2 = Blank("abjure stack", **hub_attr)
        Docker("plex")
        Docker("hoard")
        Docker("calibre")

    hosts[1] >> archon >> services
    hosts[0] >> highsea >> hub

    lair >> hub2
