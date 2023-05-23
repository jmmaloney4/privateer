# Privateer
A homelab/seedbox/ipfs cluster for anyone with just a small amount of commodity hardware.

## What you need
- One or more computers (you probably have some old bits and pieces lying around from before that upgrade, don't you?).
- Some hard drives or other storage media.

That's basically it. I'm not sure what the minimum requirements are for the computers, but I can say they are quite low. Raspberry Pis should work just fine.

## The plan
- k3s via nixos via nixops
- Flux CD.
- nginx ingress controller (maybe traefik) and cert-manager.
- ceph
- VPN
- Torrent client, radarr, sonarr, jellyfin, etc.
- IPFS cluster.
