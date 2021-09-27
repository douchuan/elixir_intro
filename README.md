
### About

Elixir guide, help you get up to speed.

chap2_cheatsheets.md [copy from](https://github.com/rstacruz/cheatsheets).
res/genserver.md [copy from](https://elixir-lang.org/cheatsheets/gen-server.pdf).

### issues

Demo show organizing a project .
Explained in [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4)

- test
- Use External Libraries
- package


```
$ mix escript.build
$./issues dynamo dynamo 3

```

### sequence

Demo show OTP Application .
Explained in [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4)

- Server
- Supervisor
- Application

```
$iex -S mix

Erlang/OTP 24 [erts-12.0.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit] [dtrace]

Compiling 3 files (.ex)
Generated sequence app
Interactive Elixir (1.12.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Sequence.Server.next_number
1

```

### task

Demo show Elixir task that runs in the background.

```
$elixir misc/task.exs

```

### kv_umbrella

Yet another demo show OTP Application .
Explained in [Mix and OTP](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html)

- Observer tool
- umbrella project
- Task & Task.Supervisor
- distributed tasks & tests

