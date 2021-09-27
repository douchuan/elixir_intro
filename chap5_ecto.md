
### Adding Ecto to an application

To start off with, we'll generate a new Elixir application by running this command:

```shell
mix new friends --sup
```

The --sup option ensures that this application has a supervision tree, which we'll need for Ecto a little later on.

To add Ecto to this application, there are a few steps that we need to take. The first step will be adding Ecto and a driver called Postgrex to our mix.exs file, which we'll do by changing the deps definition in that file to this:

```elixir
defp deps do
  [
    {:ecto_sql, "~> 3.0"},
    {:postgrex, ">= 0.0.0"}
  ]
end

```

Ecto provides the common querying API, but we need the Postgrex driver installed too, as that is what Ecto uses to speak in terms a PostgreSQL database can understand. Ecto talks to its own Ecto.Adapters.Postgres module, which then in turn talks to the postgrex package to talk to PostgreSQL.

To install these dependencies, we will run this command:

```shell
mix deps.get

```

The Postgrex application will receive queries from Ecto and execute them against our database. If we didn't do this step, we wouldn't be able to do any querying at all.

That's the first two steps taken now. We have installed Ecto and Postgrex as dependencies of our application. We now need to setup some configuration for Ecto so that we can perform actions on a database from within the application's code.

We can set up this configuration by running this command:

```shell
mix ecto.gen.repo -r Friends.Repo
```

This command will generate the configuration required to connect to a database. The first bit of configuration is in config/config.exs:

```elixir
config :friends, Friends.Repo,
  database: "friends",
  username: "user",
  password: "pass",
  hostname: "localhost"
```

This configures how Ecto will connect to our database, called "friends". Specifically, it configures a "repo". 

The Friends.Repo module is defined in lib/friends/repo.ex by our mix ecto.gen.repo command:

```elixir
defmodule Friends.Repo do
  use Ecto.Repo,
    otp_app: :friends,
    adapter: Ecto.Adapters.Postgres
end
```

This module is what we'll be using to query our database shortly. It uses the Ecto.Repo module, and the otp_app tells Ecto which Elixir application it can look for database configuration in. In this case, we've specified that it is the :friends application where Ecto can find that configuration and so Ecto will use the configuration that was set up in config/config.exs. Finally, we configure the database :adapter to Postgres.

The final piece of configuration is to setup the Friends.Repo as a supervisor within the application's supervision tree, which we can do in lib/friends/application.ex, inside the start/2 function:

```elixir
def start(_type, _args) do
  children = [
    Friends.Repo,
  ]

  ...

```

This piece of configuration will start the Ecto process which receives and executes our application's queries. Without it, we wouldn't be able to query the database at all!

There's one final bit of configuration that we'll need to add ourselves, since the generator does not add it. Underneath the configuration in config/config.exs, add this line:

```elixir
config :friends, ecto_repos: [Friends.Repo]
```

This tells our application about the repo, which will allow us to run commands such as mix ecto.create very soon.

We've now configured our application so that it's able to make queries to our database. Let's now create our database, add a table to it, and then perform some queries.

### Setting up the database

To be able to query a database, it first needs to exist. We can create the database with this command:

```shell
mix ecto.create
```

If the database has been created successfully, then you will see this message:

```shell
The database for Friends.Repo has been created.
```

NOTE: If you get an error, you should try changing your configuration in config/config.exs, as it may be an authentication error.

A database by itself isn't very queryable, so we will need to create a table within that database. To do that, we'll use what's referred to as a migration. If you've come from Active Record (or similar), you will have seen these before. A migration is a single step in the process of constructing your database.

Let's create a migration now with this command:

```shell
mix ecto.gen.migration create_people
```

This command will generate a brand new migration file in priv/repo/migrations, which is empty by default:

```elixir
defmodule Friends.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do

  end
end
```

Let's add some code to this migration to create a new table called "people", with a few columns in it:

```elixir
defmodule Friends.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :first_name, :string
      add :last_name, :string
      add :age, :integer
    end
  end
end
```

This new code will tell Ecto to create a new table called people, and add three new fields: first_name, last_name and age to that table. The types of these fields are string and integer. (The different types that Ecto supports are covered in the Ecto.Schema documentation.)

NOTE: The naming convention for tables in Ecto databases is to use a pluralized name.

To run this migration and create the people table in our database, we will run this command:

```shell
mix ecto.migrate
```

If we found out that we made a mistake in this migration, we could run mix ecto.rollback to undo the changes in the migration. We could then fix the changes in the migration and run mix ecto.migrate again. If we ran mix ecto.rollback now, it would delete the table that we just created.

We now have a table created in our database. The next step that we'll need to do is to create the schema.

