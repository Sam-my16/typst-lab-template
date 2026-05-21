# Plantilla Typst — Informes de Laboratorio (FCEN)

Plantilla en [Typst](https://typst.app) para informes de laboratorio de la Facultad de Ciencias Exactas y Naturales (UBA).

## Vista previa

> *(Agregá acá una captura del PDF generado)*



## Requisitos

- [Typst](https://typst.app) v0.14.2 o superior
- Fuente **New Computer Modern** (incluida con Typst)


## Estructura del proyecto

```
├── main.typ                  # Archivo principal (punto de entrada)
├── template/
│   └── fcen.typ              # Definición del estilo del informe
├── config/
│   └── metadata.typ          # Datos del informe (título, autores, etc.)
└── secciones/
    ├── caratula.typ
    ├── 00_resumen.typ
    ├── 01_introduccion.typ
    ├── 02_desarrollo_experimental.typ
    ├── 03_resultados.typ
    ├── 04_conclusiones.typ
    └── bibliografia.bib
```

## Cómo usar

**1. Clonar el repositorio**
```bash
git clone https://github.com/Sam-my16/typst-lab-template.git
cd Informes-de-laboratorio-
```

**2. Editar los metadatos**

Abrí `config/metadata.typ` y completá los datos de tu informe:

**3. Escribir el contenido**

Editá los archivos dentro de `secciones/` según corresponda.

**4. Definir el nombre del PDF**

Escribí el nombre que querés para el archivo de salida en `nombre_archivo.txt`

**5. Compilar**

En PowerShell (Windows):
```powershell
.\compilar.ps1
```

Esto genera el PDF con el nombre definido en `nombre_archivo.txt`.

---

## Licencia

MIT © Sam-my16