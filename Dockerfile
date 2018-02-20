FROM elixir:1.6
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y -q inotify-tools nodejs
ENV PHOENIX_VERSION 1.3.0
RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-$PHOENIX_VERSION.ez
RUN mix local.rebar --force
