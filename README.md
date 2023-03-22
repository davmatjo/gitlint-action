# :hammer_and_wrench: Github Action for [Gitlint](https://github.com/jorisroovers/gitlint)

See [Gitlint Docs](https://jorisroovers.com/gitlint/#configuration) for further documentation

## Inputs

Gitlint works out of the box without providing any inputs, but some optional ones are provided:

#### `target`
Path of the target git repository.

#### `config-flags`
Config flags in format <rule>.<option>=<value>
(e.g.: -c T1.line-length=80). Flag can be
used multiple times to set multiple config values.

#### `config-file`
Config file location

#### `commits`
The range of commit(s) (refspec or comma-separated hashes) to lint.

#### `extra`
Path to a directory or python module with extra user-defined rules

#### `ignore`
Ignore rules (comma-separated by id or name).

#### `contrib`
Contrib rules to enable (comma-separated by id or name).
