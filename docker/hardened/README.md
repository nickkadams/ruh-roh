## Installation

Requires docker

```bash
docker buildx build --load -t hardened-nginx:latest .
docker run --name hardened-nginx -p 8080:8080 -d hardened-nginx
trivy image --vuln-severity-source nvd,auto \
    --ignore-unfixed \
    --severity CRITICAL,HIGH \
    hardened-nginx:latest \
    -f table
```

## Usage

Visit http://localhost:8080
