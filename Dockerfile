FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogcHl6aXAtZGVtby1hcGIKaW1hZ2U6IGFuc2libGVwbGF5Ym9va2J1bmRsZS9weXppcC1k\
ZW1vLWFwYgpkZXNjcmlwdGlvbjogUHl0aG9uIFppcCBEZW1vIEFQQiBJbXBsZW1lbnRhdGlvbgpi\
aW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOiAKICBkb2N1bWVudGF0aW9u\
VXJsOiBodHRwczovL2dpdGh1Yi5jb20vZnVzb3IvYXBiLWV4YW1wbGVzL3RyZWUvbWFzdGVyL3B5\
emlwLWRlbW8tYXBiCiAgZGVwZW5kZW5jaWVzOiBbJ2RvY2tlci5pby9hbnNpYmxlcGxheWJvb2ti\
dW5kbGUvcHktemlwLWRlbW86bGF0ZXN0J10KICBkaXNwbGF5TmFtZTogUHl6aXAgRGVtbyAoQVBC\
KQogIGxvbmdEZXNjcmlwdGlvbjogQVBCIEltcGxlbWVudGF0aW9uIG9mIHRoZSBQeXRob24gd2Vi\
YXBwLCBodHRwczovL2dpdGh1Yi5jb20vZnVzb3IvcHktemlwLWRlbW8KcGxhbnM6CiAgLSBuYW1l\
OiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogUHl0aG9uIFppcCBEZW1vIEFQQiBJbXBsZW1lbnRh\
dGlvbgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1lOiBEZWZh\
dWx0CiAgICAgIGxvbmdEZXNjcmlwdGlvbjogVGhpcyBwbGFuIHByb3ZpZGVzIGEgcHl0aG9uIHdl\
YmFwcCBmb3IgaHR0cHM6Ly9naXRodWIuY29tL2Z1c29yL3B5LXppcC1kZW1vCiAgICAgIGNvc3Q6\
ICQwLjAwCiAgICBwYXJhbWV0ZXJzOiBbXQo="

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
