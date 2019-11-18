# pw
> a mnml password manager

## Dependencies

- `bash`
- `gpg2` (will add `gpg` support later)
- `xclip` for clipboard support

## Usage

Requires `PW_KEY` to be set. Do so by appending this to your `.bashrc`
/ `.zshrc`:

```shell
export PW_KEY=user@mail.id
```
This is your GPG key's associated email ID.

Optionally, you may set `PW_DIR` to your desired path to change the
default password store location, which is `~/.pw`. To override the
default password length of 25, set `PW_LEN` to a number of your choice.

```
pw - mnml password manager

usage: pw [options] [NAME]
All options except -i and -h require a NAME argument.

options:
  -i            Initializes password directory at $HOME/.pw or at $PW_DIR, if it exists.
  -a            Add a password.
  -g            Generate a password.
  -s            Print password to STDOUT.
  -l            List out all passwords.
  -c            Copy existing password to clipboard.
  -d            Delete password.  
  -h            Display this help message and exit.
```

## Examples

```shell
$ PW_DIR=~/passwords pw -i
pw: password directory initialized at /home/icy/passwords

$ pw -a twitter
enter password: 
pw: /home/icy/.pw/twitter.gpg created

$ pw -c twitter
pw: copied twitter to clipboard

$ pw -s twitter
notmyrealpassword

$ pw -g github
pw: generated password for github
pw: /home/icy/.pw/github.gpg created

$ pw -l
fake
github
more
passwords
some
twitter
```

## Notes

- Uses `pwgen -s` to generate passwords.
- Lacks directory support because I don't need it.
- Why not `pass(1)`? 700 lines vs 100 lines.
