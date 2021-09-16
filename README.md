
### About

Elixir guide, help you get up to speed.

chap2_cheatsheets.md copy from [cheatsheets](https://github.com/rstacruz/cheatsheets).

### issues

Demo show organizing a project .

- Use External Libraries
- package


```
$ mix escript.build
$./issues dynamo dynamo 3

```

### sequence

Demo show OTP Application .

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