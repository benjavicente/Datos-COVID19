# Repositorio datos COVID19

| Schedule | Dispatch |
| :------: | :------: |
|  ![][s]  |  ![][d]  |

---

- Copia los archivos de input del [repositorio oficial del Ministerio
  de Ciencia, Tecnología, Conocimiento, e Innovación][oficial].
- Corre las acciones que no necesitan secretos en una sola acción
  cada día a las 20:30 horas de Santiago, Chile. Si un generador de
  archivos falla, se guardan los archivos ya generados.

## Notas

- Varios archivos de input no tienen una fecha asociada, aunque se puede
  obtener, en **la mayoría** de los casos, por las fechas de los commits.
- En la fecha `2021-01-28` los datos no fueron generados.
- Gran parte del flujo de datos depende del tiempo, el ingreso
  de datos de un día en otro causa errores, por ejemplo, un commit de
  un reporte diario en el día siguiente.
- El código en python no tiene manejo de errores.

## Set-Up

El proceso de la [acción][action] se puede replicar localmente con lo siguiente:

### Python

```bash
python3 -m venv .env
source .env/bin/activate
python -m pip install --upgrade pip
pip install -r  requirements.txt
```

### Input

```bash
# Se actualiza el repositorio oficial de datos
if [ -d "official" ]; then
   cd official
   git pull
   cd ..
else
   git clone https://github.com/MinCiencia/Datos-COVID19.git official
fi
# Se copian los archivos
cp official/input . -r -f
```

### Output

```bash
cd src
bash make_output
```

## Licencia

Gran parte de este repositorio fue elaborado por el Ministerio de
Ciencia, Tecnología, Conocimiento, e Innovación de Chile. El
repositorio oficial se encuentra en github.com/MinCiencia/Datos-COVID19,
y su licencia en www.minciencia.gob.cl/sites/default/files/1771596.pdf.

Este repositorio se encuentra con licencia MIT.


[oficial]: https://github.com/MinCiencia/Datos-COVID19
[d]: https://github.com/benjavicente/Datos-COVID19/workflows/.github/workflows/data.yml/badge.svg?event=workflow_dispatch
[s]: https://github.com/benjavicente/Datos-COVID19/workflows/.github/workflows/data.yml/badge.svg?event=schedule
[action]: .github/workflows/data.yml
