# Container image that runs your code
FROM alpine:3.11.6

# Add dependencies
RUN apk add git python3 python3-dev libffi-dev musl-dev openssl-dev gcc
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
