# FROM gitpod/workspace-dotnet:latest
FROM gitpod/workspace-dotnet:2022-05-08-14-31-53

RUN brew install awscli

RUN pip install -r requirements.txt

RUN dotnet new -i Amazon.Lambda.Templates
RUN dotnet tool install -g Amazon.Lambda.Tools
RUN export PATH="$PATH:/home/gitpod/.dotnet/tools"
