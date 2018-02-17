[![CircleCI](https://circleci.com/gh/dphurley/spring-boot-microservices-wrapper.svg?style=shield&circle-token=742594273e6d8d2ba3b2777038bce55b1fcb4476)](https://circleci.com/gh/dphurley/spring-boot-microservices-wrapper)

# spring-boot-microservices-wrapper

## All Services
- **Start all services:** `docker-compose -f docker-compose.test.yml up`
- **Run all tests:** `./gradlew allTests`
- **Run feature tests only:** `./gradlew test`

## Users API
- **Start API and dependencies:** `docker-compose -f docker-compose.test.yml up users-api`
- **Test API:** `cd users-api && ./gradlew test`

