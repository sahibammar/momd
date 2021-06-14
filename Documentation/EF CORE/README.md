# Entity Framework Core

Entity Framework (EF) Core is a lightweight, extensible, open source and cross-platform version of the popular Entity Framework data access technology.

EF Core can be used as an O/RM (object-relational mapper) that maps between the relational database and the
.NET world of classes and software code. The folowing table shows how EF Core maps the two
worlds of the relational database and .NET software.
![Alt EF Core mapping between a database and .NET software](./ef_core_mapping_database_dotnet.png?raw=true "EF Core mapping between a database and .NET software")            

Next Figure captures a view of EF Core’s strengths and weaknesses: good things to the right, and not-sogood
to the left. The width of each block shows the time period over which it is thought that
topic will improve—the wider the block, the longer this will take.
![Alt strengths and weaknesses of EF Core](./strengths_weaknesses_EF_Core.png?raw=true "strengths and weaknesses of EF Core")            

- Latest generation: EF Core is much more lightweight and generally faster
than EF6.x
- Multiplatform: you can develop
and run EF Core applications on Windows, Linux, and Apple
- Open source: EF Core is also open
source, so you have access to the source code and an open list of issues and defects 
- Well supported: EF Core has good documentation (https://docs.microsoft.com/en-us/ef/core/in
- Fully featured O/RM: Entity Framework in general is a feature-rich implementation of an O/RM
- Always high-performance: only about 5% to 10%
of queries are the key ones that need hand-tuning

**When should you not use EF Core?**
- Does it support the database you want to use? You can find a
list of supported databases at https://docs.microsoft.com/en-us/ef/core/providers/.
- What level of performance you need? If you’re writing, say, a small,
RESTful service that needs to be quick and has a small number of database accesses, then
EF Core isn’t a good fit; you could use a fast, but development-time-hungry library because
there isn’t much to write. But if you have a large application, with lots of boring admin
accesses and a few important customer-facing accesses, then a hybrid approach could
work for you (see chapter 13 for an example of a mixed EF Core/Dapper application).

**Summary**
- EF Core is an object-relational mapper (O/RM) that uses Microsoft’s Language
Integrated Query (LINQ) to define database queries and return data into linked
instances of .NET classes.
- EF Core is designed to make writing code for accessing a database quick and intuitive.
This O/RM has plenty of features to match many requirements
- There are many good reasons to consider using EF Core: it’s built on a lot of
experience, is well supported, and runs on multiple platforms.

**Reference**

https://docs.microsoft.com/en-us/ef/core/
https://www.entityframeworktutorial.net/efcore/entity-framework-core.aspx

**Book**

Entity Framework Core in Action by Jon Smith, 2018

**Plugins**
https://marketplace.visualstudio.com/items?itemName=michaelsawczyn.EFDesigner
