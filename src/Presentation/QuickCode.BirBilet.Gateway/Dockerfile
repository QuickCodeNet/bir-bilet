FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
ARG PIPELINE_ID=1 

WORKDIR /build
COPY . .

WORKDIR /src
RUN if [ -f "/build/src/Presentation/QuickCode.BirBilet.Gateway/QuickCode.BirBilet.Gateway.csproj" ]; then \
      cp -a /build/src/. .; \
    elif [ -f "/build/Presentation/QuickCode.BirBilet.Gateway/QuickCode.BirBilet.Gateway.csproj" ]; then \
      cp -a /build/. .; \
    else \
      echo "QuickCode.BirBilet.Gateway.csproj not found in build context" >&2; \
      find /build -name "QuickCode.BirBilet.Gateway.csproj" 2>/dev/null || true; \
      exit 1; \
    fi

WORKDIR "/src/Presentation/QuickCode.BirBilet.Gateway"

RUN dotnet restore "QuickCode.BirBilet.Gateway.csproj"

FROM build AS publish
RUN dotnet publish "QuickCode.BirBilet.Gateway.csproj" -c Release -o /app/publish /p:UseAppHost=false /p:AssemblyVersion=1.0.0.${PIPELINE_ID} /p:GenerateCode=NO  

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

ENTRYPOINT ["dotnet", "QuickCode.BirBilet.Gateway.dll"]
