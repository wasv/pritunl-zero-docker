# pritunl-zero-docker

[Pritunl-Zero](https://zero.pritunl.com) is a zero trust system
that provides secure authenticated access to internal services from untrusted
networks without the use of a VPN. Documentation and more
information can be found at
[docs.pritunl.com](https://docs.pritunl.com/docs/pritunl-zero)

# Usage

To use this container the `MONGO_URI` and `NODE_ID` must be set. The node ID
is used to identify the node in the cluster, it must be unique to each
running container.
