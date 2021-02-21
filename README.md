# frontend-sembo

## Setup application
### Library download
```
npm install
```
### Setup .env variables
.env example:
```
VUE_APP_PORT=9000
VUE_APP_PROTOCOL=http://
VUE_APP_HOST=localhost
```
These parameters are for the API connection, default is API in localhost using http in port 9000

## Deploy application
### Runs application in development mode with hot-reload in port 8080
```
npm run serve
```

### Minifies and compiles project for development mode in port 5000, use parameter **--port** for custom port
```
npm run build
```
