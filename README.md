# Localstack in host mode

Run in host mode to hopefully make localstack faster.

prereq: Install homebrew.

## Create a python sandbox for localstack

Install virtualenvwrapper into known location (latest python3 from homebrew.)

```
$ brew install python3

$ which python3
/usr/local/bin/python3

$ python3 -m pip install virtualenvwrapper
```

Add the following to `~/.bash_profile`

```
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```

Exit/reopen terminal.

Create named python sandbox and install localstack into it.

```
$ mkvirtualenv localstack

(localstack) ~ $ pip install -r requirements.txt
```

## Run localstack in host mode

```
$ ./localstack.sh
```
