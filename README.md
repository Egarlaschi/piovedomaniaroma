##PIOVE DOMANI A ROMA?
liberamente ispirato da piovedomaniaroma.it
lo script usa curl per contattare wttr.in e sapere la percentuale di precipitazioni.
Se è maggiore di 0, piove.

#Installazione
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

#Utilizzo
chiama l'alias (in questo caso il comando pdr) e basta. Ora scopri se domani piove (a Roma).
