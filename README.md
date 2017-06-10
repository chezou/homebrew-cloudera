# homebrew-cloudera

You can install Cloudera Director Server and Client with following command.

```sh
brew tap chezou/cloudera
brew install cloudera-director-server
```

If you want to install only Cloudera Diretor Server, use `--without-cloudera-director-client`.

If you want to install only client, you can use following command:

```sh
brew install cloudera-director-client
```

## How to start Cloudera Director Server

```sh
# Start Cloudera Director Server background
cloudera-director-server-start
# Stop Cloudera Director Server background
cloudera-director-server-stop
```
