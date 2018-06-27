[<-- Back to main section](../README.md)

# Repository structure concepts

1. [multirepo](#multirepo)
1. [monorepo](#monorepo)
1. [microplatform](#microplatform)

## multirepo

```
web-client-service/
    application/
        public/
    docker-compose/
        foo.yml
        bar.yml
    e2e-tests/
        features/
    kubernetes/
        foo.yml
        bar.yml
    .env
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-server-service/
    application/
        public/
    docker-compose/
        foo.yml
        bar.yml
    e2e-tests/
        features/
    kubernetes/
        foo.yml
        bar.yml
    .env
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-client-foundation/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-server-foundation/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-assets-builder/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

## monorepo

```
project-name/
    docker-compose/
        .env
        foo.yml
        bar.yml
        Jenkinsfile
        README.md
    kubernetess/
        foo.yml
        bar.yml
        Jenkinsfile
        README.md
    e2e-tests/
        features/
        Jenkinsfile
        README.md
    web-client-service/
        application/
            public/
        Dockerfile
        Jenkinsfile
        README.md
    web-server-service/
        application/
            public/
        Dockerfile
        Jenkinsfile
        README.md
    web-client-foundation/
        Dockerfile
        Jenkinsfile
        README.md
    web-server-foundation/
        Dockerfile
        Jenkinsfile
        README.md
    web-assets-builder/
        Dockerfile
        Jenkinsfile
        README.md
    CHANGELOG.md
    README.md
```

## microplatform

```
project-name/
    infrastructure/
        docker-compose/
            .env
            foo.yml
            bar.yml
        kubernetes/
            foo.yml
            bar.yml
    images/
        web-client-service/
            application/
                public/
            Dockerfile
        web-server-service/
            application/
                public/
            Dockerfile
    e2e-tests/
        features/
    CHANGELOG.md
    Jenkinsfile
    README.md
```

```
web-client-foundation/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-server-foundation/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```

```
web-assets-builder/
    CHANGELOG.md
    Dockerfile
    Jenkinsfile
    README.md
```
