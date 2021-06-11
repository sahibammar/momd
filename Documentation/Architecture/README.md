# Architecture

## Practices

* Clean Architecture
* Clean Code
* SOLID Principles
* Separation of Concerns
* DDD (Domain-Driven Design)

## Layers

**Web:** Frontend and API.

**Application:** Flow control.

**Domain:** Business rules and domain logic.

**Model:** Data transfer objects.

**Database:** Data persistence.

![Alt Architecture](./rafaelfgx.png?raw=true "Architecture")            

**Examples**

.NET 5, ASP.NET Core 5, Entity Framework Core 5, C# 9, Angular 12, Clean Code, SOLID, DDD.
https://github.com/rafaelfgx/Architecture
```bash
> git clone https://github.com/rafaelfgx/Architecture.git
> cd Architecture
> cd source\Web\Frontend
> npm i
> cd ..
> dotnet run
```
Then open https://localhost:8090/ in a browser

Note: you might need to change version value from "version": "5.0.301" to "version": "5.0.202" in \Architecture\source\global.json 

**References**
Architect Modern Web Applications with ASP.NET Core and Azure
https://docs.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure

