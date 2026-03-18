# PIOVE DOMANI A ROMA?
liberamente ispirato da piovedomaniaroma.it\n
lo script usa curl per contattare il sito sovracitato per restituire un ASCII art di un si o un no.

## Installazione
scarica la repo
```bash
git clone https://github.com/Egarlaschi/piovedomaniaroma.git
```

entra nella cartella della repo

```bash
cd piovedomaniaroma
```    

imposta lo script come eseguibile

```bash
chmod +x domanipiove.sh
```

sposta domanipiove.sh nella cartella degli script

```bash
mv domanipiove.sh ~/.local/bin
```

imposta l'alias

su zsh
```bash
echo "alias pdr='~/.local/bin/pd.sh'" >> ~/.zshrc
```

su bash
```bash
echo "alias pdr='~/.local/bin/pd.sh'" >> ~/.bashrc
```

## Utilizzo
interpella piovedomaniaroma.it
```bash
pdr
```

interpella wttr.in, (meno iconico)
```bash
pdr -w
```

non mostrare alcuna asci artt
```bash
pdr -t
```
