## Instalar elixir
### Instalação via asdf 
[asdf](https://github.com/asdf-vm/asdf)

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
```

#### Dentro do zshrc adicionar e restartar terminal (abrir e fechar)
```bash
. $HOME/.asdf/asdf.sh

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
```

### Instalar erlang e elixir
```bash
asdf plugin-add erlang
asdf plugin-add elixir

asdf install erlang 22.0.7
asdf install elixir 1.9.1-otp-22

# setar versão global
asdf global erlang 22.0.7
asdf global elixir 1.9.1-otp-22
```
## Funções são executadas a partir do terminal iterativo do elixir
```bash 
# para acessar

cd invoice #entrar na pasta

iex -S mix #entrar no terminal

Invoice.create_invoices("food")
```

### Dependências
Todas as dependências do projeto são declaradas dentro do arquivo mix.exs
- dependência de documentação 
  -  adicionar no arquivo mix.exs ->  ```{:ex_doc, "~> 0.23.0"}``` 
    ```bash 
      # obter as dependências
      mix deps.get

      # gerar documentação
      mix docs
    ```

### Anotações
- Em elixir a gente sempre cria algo novo, nunca sobrepõe algo existente, por conta da imutabilidade
