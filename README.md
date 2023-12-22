# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ docker build -t edp-generador .
$ docker run -it -v $(pwd)/outputs-gen:/app/outputs/ edp-generador

```

## usuario

```
$ cd 02-usuario/
$ docker build -t edp-usuario .
$ docker run -it -v $(pwd)/../01-generador/outputs-gen/:/opt/files/ -v $(pwd)/outputs-user/:/opt/outputs/ -v $(pwd)/textos/:/opt/textos/ edp-usuario
```
