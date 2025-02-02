"""Test for anonymous identity"""
import pytest


@pytest.fixture(scope="module")
def authorization(authorization, rhsso):
    """Add RHSSO identity"""
    authorization.add_oidc_identity("rhsso", rhsso.well_known["issuer"])
    return authorization


def test_anonymous_identity(client, auth, authorization):
    """
    Setup:
        - Create AuthConfig with RHSSO identity
    Test:
        - Send request with authentication
        - Assert that response status code is 200
        - Send request without authentication
        - Assert that response status code is 401 (Unauthorized)
        - Add anonymous identity
        - Send request without authentication
        - Assert that response status code is 200
    """
    response = client.get("/get", auth=auth)
    assert response.status_code == 200

    response = client.get("/get")
    assert response.status_code == 401

    authorization.add_anonymous_identity("anonymous")

    response = client.get("/get")
    assert response.status_code == 200
