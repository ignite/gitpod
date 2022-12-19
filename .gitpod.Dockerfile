FROM gitpod/workspace-full

# Go
ENV GO_VERSION=1.19.4
ENV GOPATH=$HOME/go-packages
ENV GOROOT=$HOME/go
ENV PATH=$GOROOT/bin:$GOPATH/bin:$PATH
RUN rm -rvf $HOME/go
RUN curl -fsSL https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz | tar xzs     && printf '%s\n' 'export GOPATH=/workspace/go'                       'export PATH=$GOPATH/bin:$PATH' > $HOME/.bashrc.d/300-go

# GH CLI
RUN brew install gh

# NPM
RUN npm install -g npm@7.10.0
RUN curl https://get.ignite.com/cli@nightly! | sudo bash
