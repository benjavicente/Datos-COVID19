# Repositorio no oficial de COVID19

![.github/workflows/data.yml][status_badge]

- Copia los archivos de input del repositorio [oficial]
- Corre las acciones que no necesitan secretos en una sola acción


## Set-Up

El proceso de la acción se puede replicar localmente con lo siguiente:

### Python

```bash
python3 -m venv .env
source .env/bin/activate
python -m pip install --upgrade pip
pip install -r  requirements.txt
```

### Input

```bash
if [ -d "official" ]; then
   cd official
   git pull
   cd ..
else
   git clone https://github.com/MinCiencia/Datos-COVID19.git official
fi
cp official/input . -r -f
```

### Output

```bash
bash make
```



[oficial]: https://github.com/MinCiencia/Datos-COVID19
[status_badge]: https://github.com/benjavicente/Datos-COVID19/workflows/.github/workflows/data.yml/badge.svg
