
### Installing Elixir

Instructions for installing Elixir are available at [here](https://elixir-lang.org/install.html).

### Running Elixir

Run Elixir's interactive shell.

```

➜  ~ iex
Erlang/OTP 24 [erts-12.0.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit] [dtrace]

Interactive Elixir (1.12.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)>

```

Typing Ctrl-C twice exiting from iex.

#### Compile and Run

Go to a working directory and create a file called hello.exs.

``` Elixir

# hello.exs

IO.puts "Hello, World!"

```

Having created our source file, let’s run it. In the same directory where you created the file, run the elixir command:

```
$ elixir hello.exs
```

We can also compile and run it inside *iex* using the *c* helper:

```
$ iex

iex> c "hello.exs"

```

### Organizing a Project

Use Mix to Create Our New Project. 
Navigate to a place where you want this new project to live, and type follow commands.

```
# 1, a project named 'issues' created
$ mix new issues

# 2, setup git
$ git init
$ git add .
$ git commit -m "Initial commit of new project"

# 3, run tests
$ mix test

# 4, dev life-cycle
$ mix compile
# Trying out latest changes from an iex session.
$ iex -S mix
iex > recompile()

# 5, format
# mix format

# 6, package our program
$ mix escript.build

```

#### Package

Mix can package our code, along with its dependencies, into a single file that can be run on any Unix-based platform. This uses Erlang’s escript utility, which can run precompiled programs stored as a Zip archive.

Ref to [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4), Chapter 13 "Organizing a Project",
"Task: Make a Command-Line Executable".


#### ex vs exs

- ex, intended to be compiled into bytecodes and then run
- exs, more like programs in scripting languages, they are effectively interpreted at the source level

When we come to write tests for our Elixir programs, you’ll see that the application files have .ex extensions, whereas the tests have .exs because we don’t need to keep compiled versions of the tests lying around.


### App Config

When we created the project using mix new, it added a *config/* directory containing config.exs. That file stores application-level configuration. If *config* directory not created, you should create it by hand.


Ref to [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4), Chapter 13 "Organizing a Project",
"Application Configuration".


### Logger

Ref to [Programming Elixir, Dave Thomas](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/ref=sr_1_4?dchild=1&keywords=elixir&qid=1631671759&s=books&sr=1-4), Chapter 13 "Organizing a Project",
"Task: Add Some Logging".