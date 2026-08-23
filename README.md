# dotfiles

#### Pacotes e apps essenciais no meu Terminal/CLI

A ideia é ter um lugar registrando os pacotes e APPS que mais uso. Claro, também ter uma forma rápida de migrar cada APP e suas confirurações entre maquinas.
PC pessoal, PC do trabalho e qualquer outro com um SETUP rápido.

Principais Pacotes que uso
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

Executando o arquivo de entrada

Apps do sistema necessitam de permissão de adminstrador (root/sudo). Agora, os Apps de usuário devem ser instalados com o usuário comum: `id=1000`.

O *script* inicialmente deve ser executado como *root* usando o *sudo*, mas assim que ele chagar no bloco de apps do usuário ocorre automaticamente a troca para o usuário comum (`id=1000`).

```bash
chmod +x install.sh
```
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
