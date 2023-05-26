# syntax=docker/dockerfile:1
FROM vggfiit/latex-docker:latest

# Update the APT-GET
RUN apt-get update --fix-missing
RUN apt-get install apt-transport-https
RUN apt-get install ca-certificates
RUN update-ca-certificates

USER root

WORKDIR /workspace/{{cookiecutter.project_name}}