
# Glue local runner
#### ( Doc en progreso )
## Tabla de contenidos

1. [Proposito](#proposito)
2. [Requisitos](#requisitos)
3. [iniciando el servico](#iniciando-el-servico)
3. [Referencias](#referencias)

## Proposito

Brindar un entorno de desarrollo de scripts en Python y Spark para el equipo **Tiimiit**

## Requisitos
     Docker >= 20.10
     Docker-compose >= 1.25

## iniciando el servico
sobre el directorio raiz

- Crear archivo de variables de entorno ( .env ) que contenga las siguientes variables.

```console
aws_access_key_id={}
aws_secret_access_key={}
aws_session_token={}
```

- Ejecutar el comando
    
```console
docker compose up
```

## Referencias
[Glue-best-practices](https://docs.aws.amazon.com/prescriptive-guidance/latest/serverless-etl-aws-glue/best-practices.html)
[Glue3-containers](https://aws.amazon.com/es/blogs/big-data/developing-aws-glue-etl-jobs-locally-using-a-container/)