# dotfiles

#### Pacotes e apps essenciais no meu Terminal/CLI

A ideia é ter um lugar registrando os pacotes e APPS que mais uso. Claro, também ter uma forma rápida de migrar cada APP e suas confirurações entre maquinas.
PC pessoal, PC do trabalho e qualquer outro com um SETUP rápido.

Principais Pacotes que uso:
|      |                  |
|--------|--------------------------|
| rg     |     procurar no projeto  |
| fd     |     achar arquivos       |
| bat    |     ler arquivos         |
| eza    |     listar pastas        |
| jq     |     ler JSON             |
| git    |     versionamento        |
| fzf    |     seleção interativa   |
| zoxide |     navegação rápida     |
| docker |     linux e containers   |

---

Apps do sistema necessitam de permissão de adminstrador (root/sudo). Agora, os Apps de usuário devem ser instalados com o usuário comum: `id=1000`.

O **script** inicialmente deve ser executado como *root* usando o *sudo*, mas assim que ele chegar no bloco de apps do usuário ocorre automaticamente a troca para o usuário comum, usuário sem tantos privilégios (`id=1000`).

Apps do **Sistema** == Apps instalados via algum gerenciador de pacote já disponível na sua maquina. Ex: APT.

Apps do **Usuário** == Apps instalados via curl, wget, pip, uv, npm, composer, cargo. Geralemnte são scripts que você não consegue garantir um absurda segurança. Apesar de que instalar o UV via curl pegando o link diretamente do site deles é ou pelo menos devia ser seguro.

A diferença mais forte para mim se resume onde esses APPS são gravados, o diretório onde eles ficam disponíveis.

System:

`/home/$USER/.local/bin/uv`

`/home/$USER/.local/bin/zoxide`

User:

`/usr/bin/tree`

`/usr/bin/make`

`/usr/bin/apt`

`/usr/bin/docker`


### Executando

1 - Primeiro vamos dar a permissão de **execução** para o **Script**

```bash
chmod +x install.sh
```

2 - Vamos executar o script com o usuário **root**
```bash
sudo ./install.sh
```
```bash
sudo bash install.sh
```

--

Os Apps devem ser declarados nestes dois arquivos com base no seu tipo:

[./scripts/ssystem-packages.sh](./scripts/system-packages.sh)

[./scripts/user-packages.sh](./scripts/user-packages.sh)
