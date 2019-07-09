Sinatra + Docker.
William Calderon

1. Clonar el repo
2. Iniciar proyecto con

docker build -t bparanj/hello . && docker run --rm -p 3000:3000 bparanj/hello

3. En Postman enviar en el BODY en RAW con JSON(application/json) via POST a la url localhost:3000/ el siguiente array. El cual puede variar en cantidad de items

Ej: [{
    "name": "Bart"
  },
  {
    "name": "Lisa"
  },
  {
    "name": "Maggie"
  }
]

Recibirá como respuesta

Bart, Lisa & Maggie
