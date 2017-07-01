# Backend

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Configure databases in `config/dev.exs` and `config/test.exs`
  ```
  # Configure your database
  config :backend, Backend.Repo,
      adapter: Ecto.Adapters.Postgres,
      username: "DATABASE_USER",
      password: "DATABASE_PASSWORD",
      database: "DATABASE_NAME_ENV",
      hostname: "localhost",
      pool_size: 10
  ```

  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * edit file `priv/repo/seeds.exs` with users for testing
  * Create a first User `mix run priv/repo/seeds.exs`  
  * Start Phoenix endpoint with `mix phoenix.server`

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
