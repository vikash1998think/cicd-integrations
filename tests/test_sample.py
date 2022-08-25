from apps.app import create_app


def test_answer():
    client = create_app().test_client()
    response = client.get('/')
    assert response.status_code == 404
