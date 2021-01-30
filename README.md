# Repositorio datos COVID19

| Schedule | Dispatch |
| :------: | :------: |
| ![][s]   | ![][d]   |

---

- Copia los archivos de input del [repositorio oficial del Ministerio
  de Ciencia, Tecnología, Conocimiento, e Innovación][oficial].
- Corre las acciones que no necesitan secretos en una sola acción en
  menos de 5 minutos cada día a las 13:30 horas de Santiago, Chile.


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


## Licencia

Grán parte de este repositório fué elaborado por el Ministeriode
Ciencia, Tecnología, Conocimiento, e Innovación de Chile. El
repositorio oficial se encuentra en github.com/MinCiencia/Datos-COVID19,
y se encuantra en www.minciencia.gob.cl/sites/default/files/1771596.pdf.

Este repositorio se encuentra con licencia MIT. 



[oficial]: https://github.com/MinCiencia/Datos-COVID19
[d]: https://github.com/benjavicente/Datos-COVID19/workflows/.github/workflows/data.yml/badge.svg?event=workflow_dispatch
[s]: https://github.com/benjavicente/Datos-COVID19/workflows/.github/workflows/data.yml/badge.svg?event=schedule

