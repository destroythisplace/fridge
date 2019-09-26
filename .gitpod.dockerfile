FROM gitpod/workspace-full

USER root

# CUSTOM // Erlang/Elixir ######

# Important!  Update this no-op ENV variable when this Dockerfile
# is updated with the current date. It will force refresh of all
# of the base images and things like `apt-get update` won't be using
# old cached versions when the Dockerfile is built.
ENV REFRESHED_AT=2019-09-29 \
    LANG=en_US.UTF-8 \
    TERM=xterm \
    VERSION_ERLANG=22.1 \
    VERSION_ELIXIR=1.9.1-otp-22 \
    VERSION_GLEAM 0.4.0

# Install custom tools, runtime, etc.
RUN apt-get update \
    # window manager
    # && apt-get install -y jwm \
    # electron
    && apt-get install -y libgtk-3-0 libnss3 libasound2 \
    # native-keymap
    && apt-get install -y libx11-dev libxkbfile-dev \

    # CUSTOM // build tools
    # disabled: wx-common libwxgtk3.0-dev unixodbc unixodbc-bin unixodbc-dev
    && apt-get install -y build-essential git wget libssl-dev libreadline-dev libncurses5-dev zlib1g-dev m4 curl autoconf \
    && apt-get install -y libxml2-utils xsltproc fop \

    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

# Apply user-specific settings
#RUN bash -c ". .nvm/nvm.sh \
#    && nvm install 10 \
#    && nvm use 10 \
#    && npm install -g yarn"

# CUSTOM // asdf-vm install
RUN cd \
    && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4 \
    # For Ubuntu or other linux distros
    && echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc \
    && echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

    # CUSTOM // install erlang/elixir
RUN cd \
    && ~/.asdf/bin/asdf plugin-add erlang \
    && ~/.asdf/bin/asdf install erlang $VERSION_ERLANG \
    && ~/.asdf/bin/asdf global erlang $VERSION_ERLANG

RUN cd \
    && ~/.asdf/bin/asdf plugin-add elixir \
    && ~/.asdf/bin/asdf install elixir $VERSION_ELIXIR \
    && ~/.asdf/bin/asdf global elixir $VERSION_ELIXIR

RUN cd \
    && ~/.asdf/bin/asdf plugin-add gleam https://github.com/vic/asdf-gleam.git
    && ~/.asdf/bin/asdf install gleam $VERSION_GLEAM
    && ~/.asdf/bin/asdf global gleam $VERSION_GLEAM


RUN echo "install" >> ~/install

# Give back control
USER root
