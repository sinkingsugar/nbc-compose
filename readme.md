# Nim beacon chain made easy

## How

```
export EXT_IP_ADDRESS=YOUR EXTERNAL IP ADDRESS HERE/OR JUST 127.0.0.1
docker-compose up
```

First run will be a bit different, geth has to sync goerli network, metrics won't be ready until nim is built and so on.
Also during the first run the data folder will be created, in that folder you should put your secrets.
Just after it's settled run

```
docker-compose stop
```

Fill your secrets if needed (if you do automatic wallet thing won't be needed)

```
docker-compose start
```

## Grafana

Available at:
`http://localhost:3000` (or whatever address you have)
user: admin, password: admin

Configure prometheus data source as:
`http://metrics:9090`

## Known issues

Metrics and prometheus won't work during the first run, let nbc compile and settle, afterward restarting it will work