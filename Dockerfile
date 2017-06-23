FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDQzZjBiZjBiLTQzOGMtNDk1Yy04MTI3LTExYjEyNDZkZGVhNApuYW1lOiBweXppcC1kZW1v\
LWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3B5emlwLWRlbW8tYXBiCmRlc2NyaXB0\
aW9uOiBQeXRob24gWmlwIERlbW8gQVBCIEltcGxlbWVudGF0aW9uCmJpbmRhYmxlOiBmYWxzZQph\
c3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6ICJQeXppcCBEZW1vIChBUEIp\
IgogIGxvbmdEZXNjcmlwdGlvbjogIkFQQiBJbXBsZW1lbnRhdGlvbiBvZiB0aGUgUHl0aG9uIHdl\
YmFwcCwgaHR0cHM6Ly9naXRodWIuY29tL2Z1c29yL3B5LXppcC1kZW1vIgogIGNvbnNvbGUub3Bl\
bnNoaWZ0LmlvL2ljb25DbGFzczogaWNvbi1weXRob24KICBkb2N1bWVudGF0aW9uVXJsOiAiaHR0\
cHM6Ly9naXRodWIuY29tL2Z1c29yL2FwYi1leGFtcGxlcy90cmVlL21hc3Rlci9weXppcC1kZW1v\
LWFwYiIKcGFyYW1ldGVyczogW10K"

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles

USER apb
