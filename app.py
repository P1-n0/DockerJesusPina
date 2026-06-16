import requests

def obtenerDATOS(nombre):
    url = f"https://pokeapi.co/api/v2/pokemon/{nombre.lower()}"
    respuesta = requests.get(url)
    
    if respuesta.status_code == 200:
        datos = respuesta.json()
        return {"nombre": datos["name"], "peso": datos["weight"]}
    return None

if __name__ == "__main__":
    print("Iniciando consulta a la PokeAPI...")
    pokemon = "snorlax"
    info = obtenerDATOS(pokemon)
    
    if info:
        print(f"Éxito: El pokemon {info['nombre'].capitalize()} pesa {info['peso']} hectogramos.")
    else:
        print("Error: Pokemon no encontrado.")