
### Ecological

- [José Valim created Elixir in 2012](https://github.com/elixir-lang/elixir)
- [IoT](https://www.nerves-project.org/)
- Web
	- [Phoenix](https://www.phoenixframework.org/)  
	- [Ecto](https://hexdocs.pm/ecto/Ecto.html), a language integrated query and database wrapper
	- [Plug](https://hexdocs.pm/plug), a specification and conveniences for composable modules in between web applications
	- [Open Web Application Security Project(OWASP)](https://github.com/OWASP/CheatSheetSeries)


### Books

- Basic
	- [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4)
	- [Programming Erlang: Software for a Concurrent World (Pragmatic Programmers) Second Edition](https://www.amazon.com/Programming-Erlang-Concurrent-Pragmatic-Programmers/dp/193778553X)
	- [Getting started guide](https://elixir-lang.org/getting-started/introduction.html)
	- [Mix and OTP guide](https://elixir-lang.org/getting-started/introduction.html)
	- [Meta-programming guide](https://elixir-lang.org/getting-started/introduction.html)
- Web
	- [Programming Phoenix](https://www.amazon.com/Programming-Phoenix-1-4-Productive-Reliable-ebook/dp/B084NV65T8/ref=sr_1_1?dchild=1&keywords=programming+phoenix&qid=1632720925&sr=8-1)
- Macro
	- [Metaprogramming Elixir](https://www.amazon.com/Metaprogramming-Elixir-Write-Less-Code/dp/1680500414/ref=sr_1_2?dchild=1&keywords=metaprogramming+elixir&qid=1632721012&sr=8-2)


### Docs & 3rd & Extends

- [std](https://elixir-lang.org/docs.html)
- [erlang](https://www.erlang.org/docs)
- [hex](https://hex.pm/)
- GitHub

### Finding a Library

The first port of call is [elixir lang](http://elixir-lang.org/docs/), the Elixir documentation. Often you’ll find a built-in library that does what you want.Next, check if any standard Erlang libraries do what you need. This isn’t a simple task. Visit [erlang](http://erlang.org/doc/) and look in the left sidebar for Application Groups. There you’ll find libraries sorted by top-level category.If you find what you’re looking for in either of these two places, you can stop, because all these libraries are already available to your application. But if they don’t have what you need, you’ll have to add an external dependency.

The next place to look is [hex](http://hex.pm), the Elixir/Erlang Package Manager. This is a (small, but growing) list of packages that integrate nicely with a mix-based project.

If all else fails, Google and GitHub are your friends. Search for terms such as elixir http client or erlang distributed logger, and you’re likely to turn up the libraries you need.


### Editor

- [Visual Studio Code](https://code.visualstudio.com/)
- vscode-elixir


### [Project Overview]((https://github.com/elixir-lang/elixir))

#### Elixir Lang

- elixir - Elixir's kernel and standard library
- eex - EEx is the template engine that allows you to embed Elixir
- ex_unit - ExUnit is a simple test framework that ships with Elixir
- iex - IEx stands for Interactive Elixir: Elixir's interactive shell
- logger - Logger is the built-in logger
- mix - Mix is Elixir's build tool

| Language | files | code |
|----------|-------|------|
| Elixir | 524 | 124684 |
| Erlang | 51 | 10369 |
| SUM | 605 | 137971 |

#### [Phoenix](https://www.phoenixframework.org/)

- Ecto - a language integrated query and database wrapper
- ExUnit - Elixir's built-in test framework
- Gettext - Internationalization and localization through gettext
- Phoenix - the Phoenix web framework (these docs)
- Phoenix PubSub - a distributed pub/sub system with presence support
- Phoenix HTML - conveniences for working with HTML in Phoenix
- Phoenix View - a set of functions for building Phoenix.View and working with template languages such as Elixir's own EEx
- Phoenix LiveView - rich, real-time user experiences with server-rendered HTML
- Phoenix LiveDashboard - real-time performance monitoring and debugging tools for Phoenix developers
- Plug - a specification and conveniences for composable modules in between web applications
- Swoosh - a library for composing, delivering and testing emails, also used by mix phx.gen.auth

Telemetry Metrics - common interface for defining metrics based on Telemetry events

| Language | files | code |
|----------|-------|------|
| Elixir | 272 | 27166 |
| JSON | 9 | 17761 |
| SUM | 365 | 57876 |

