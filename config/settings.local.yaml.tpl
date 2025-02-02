#default:
#  skip_cleanup: false
#  openshift:
#    project: "kuadrant"                       # Optional: namespace for tests to run, if None uses current project
#    api_url: "https://api.openshift.com"      # Optional: OpenShift API URL, if None it will OpenShift that you are logged in
#    token: "KUADRANT_RULEZ"                   # Optional: OpenShift Token, if None it will OpenShift that you are logged in
#    kubeconfig_path: "~/.kube/config"         # Optional: Kubeconfig to use, if None the default one is used
#  openshift2:
#    project: "kuadrant2"                      # Required: Secondary OpenShift project, for running tests across projects
#  kcp:                                        # Required for glbc tests
#    project: "glbc-test"                      # Optional: namespace for glbc tests to run, if None uses current namespace
#  tools:
#    project: "tools"                          # Optional: OpenShift project, where external tools are located
#  rhsso:
#    url: "SSO_URL"
#    username: "SSO_ADMIN_USERNAME"
#    password: "SSO_ADMIN_PASSWORD"
#    test_user:
#      username: "testUser"
#      password: "testPassword"
#  auth0:
#    client_id: "CLIENT_ID"
#    client_secret: "CLIENT_SECRET"
#    url: "AUTH0_URL"
#  mockserver:
#    url: "MOCKSERVER_URL"
#  cfssl: "cfssl"  # Path to the CFSSL library for TLS tests
#  authorino:
#    image: "quay.io/kuadrant/authorino:latest"  # If specified will override the authorino image
#    deploy: false                               # If false, the testsuite will use already deployed authorino for testing
#    url: ""                                     # URL for already deployed Authorino
#  envoy:
#    image: "docker.io/envoyproxy/envoy:v1.23-latest"  # Envoy image, the testsuite should use, only for Authorino tests now