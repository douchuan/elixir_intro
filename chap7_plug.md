
There are two kinds of plugs: module plugs and function plugs. A function plug is a single function. A module plug is a module that provides two functions with some configuration details. Either way, they work the same.

### Module Plugs

Sometimes you might want to share a plug across more than one module. In that case, you can use a module plug. To satisfy the Plug specification, a module plug must have two functions, named *init* and *call*.

The simplest possible module plug returns the given options on init and the given connection on call. This plug does nothing:

```elixir
defmodule NothingPlug do 
  def init(opts) do
    opts
  end

  def call(conn, _opts) do 
    conn
  end
end
```

Remember, a typical plug transforms a connection. The main work of a module plug happens in call. In our NothingPlug, we simply pass the connection through without changes. The call will happen at runtime.

Sometimes, you might want to let the programmer change the behavior of a plug. We can do that work in the second argument to call, options. In our NothingPlug, we don’t need any more information to do our job, so we ignore the options.

Sometimes, you might need Phoenix to do some heavy lifting to transform options. That’s the job of the init function. Plug uses the result of init as the second argument to call. In development mode, Phoenix calls init at runtime, but in production mode, init is called only once, at compile time. This strategy makes init the perfect place to validate and transform options without slowing down every request so call can be as fast as possible. Since call is the workhorse of Plug, we want it to do as little work as possible.


