## Installation

Requires docker

```bash
cd vulnerable
docker buildx build --load -t vulnerable-nginx:latest .
docker run --name vulnerable-nginx -p 8080:80 -d vulnerable-nginx
trivy image --vuln-severity-source nvd,auto \
    --ignore-unfixed \
    --severity CRITICAL,HIGH \
    vulnerable-nginx:latest \
    -f table
```

## Usage

Visit http://localhost:8080
