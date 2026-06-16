from app import obtenerDATOS

def test_encontrado():
    resultado = obtenerDATOS("pikachu")
    assert resultado is not None
    assert resultado["nombre"] == "pikachu"
    assert "peso" in resultado

def test_falla():
    resultado = obtenerDATOS("pokemon_falso_123")
    assert resultado is None