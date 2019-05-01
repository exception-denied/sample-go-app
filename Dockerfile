# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from golang v1.11 base image
FROM golang:1.11

WORKDIR $(System.DefaultWorkingDirectory)
# Set the Current Working Directory inside the container

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container

# Download all the dependencies
# https://stackoverflow.com/questions/28031603/what-do-three-dots-mean-in-go-command-line-invocations
RUN go get -d  https://github.com/krishna2751992/sample-go-app.git

# Install the package
RUN go build

# This container exposes port 8080 to the outside world
EXPOSE 8080

# Run the executable
CMD ["hello"]
