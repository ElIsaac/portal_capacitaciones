# bun-react-tailwind-shadcn-template

To install dependencies:

```bash
bun install
```

To start a development server:

```bash
bun dev
```

To run for production:

```bash
bun start
```

This project was created using `bun init` in bun v1.2.10. [Bun](https://bun.sh) is a fast all-in-one JavaScript runtime.
# NOTAS

`catalogo_estatus_cursos`, debera tener:

| id | estatus |
| --- | --- |
| 1 | Sin iniciar |
| 2 | En curso |
| 3 | Aprobado |
| 4 | Reprobado |

, asegúrate de tener:

| id | estatus |
| --- | --- |
| 1 | Sin iniciar |
| 2 | En curso |
| 3 | Aprobado |
| 4 | Reprobado |

# POSIBLES ENDPOINTS

## Autenticación

```markdown
POST   /api/auth/login                   — Iniciar sesión (genera JWT con rol)
POST   /api/auth/logout                  — Cerrar sesión
GET    /api/auth/user                    — Obtener datos del usuario autenticad
```

---

## Gestión de Roles y Usuarios

```

GET   /api/roles                     — Listar todos los roles (admin, instructor, alumno)
POST  /api/roles                     — Crear un nuevo rol
PUT   /api/usuarios/{id_usuario}/rol — Asignar o cambiar rol de un usuario

GET   /api/usuarios                  — (Opcional) Listar usuarios
GET   /api/usuarios/{id_usuario}     — (Opcional) Obtener detalle de un usuario

```

> Protegido: solo usuarios con rol admin.
> 

---

## Catálogos

```
GET /api/catalogos/departamentos
GET /api/catalogos/categorias
GET /api/catalogos/empresas
GET /api/catalogos/tipo-preguntas
GET /api/catalogos/tipo-cuestionarios
```

---

## Gestión de Cursos

```
GET     /api/cursos
GET     /api/cursos/{id}
POST    /api/cursos
PUT     /api/cursos/{id}
DELETE  /api/cursos/{id}
GET     /api/cursos/departamento/{id_departamento}
GET     /api/cursos/categoria/{id_categoria}
GET     /api/cursos/empresa/{id_empresa}

```

---

## Inscripciones

### Para alumnos (auto-inscripción)

```
GET    /api/inscripciones
GET    /api/inscripciones/usuario/{id_usuario}
GET    /api/inscripciones/curso/{id_curso}
POST   /api/inscripciones                — Inscribirme en un curso (rol alumno)
PUT    /api/inscripciones/{id_inscripcion} — Actualizar estado (solo ciertos flujos)

```

### Para administradores

```
POST   /api/admin/inscripciones
  • Crea la inscripción con { id_usuario, id_curso }
  • Fija id_estatus_curso = “Sin iniciar” y intentos = 0

PUT    /api/admin/inscripciones/{id_inscripcion}/reset
  • Fuerza id_estatus_curso = “Sin iniciar” y (opc.) intentos = 0

```

> Protegido: solo rol admin.
> 

---

## Evaluaciones y Exámenes

```
GET    /api/examenes/preguntas/curso/{id_curso}/tipo/{id_tipo}
POST   /api/examenes/respuestas
GET    /api/examenes/resultados/usuario/{id_usuario}/curso/{id_curso}

POST   /api/inscripciones/{id_inscripcion}/evaluar
  • Body: { calificacion }
  • Lógica: actualiza estatus “Aprobado” o incrementa intentos + resetea a “Sin iniciar”     si reprueba

```

---

## Cuestionarios

```
GET  /api/cuestionarios/preguntas/tipo/{id_tipo}
GET  /api/cuestionarios/preguntas/curso/{id_curso}/tipo/{id_tipo}
POST /api/cuestionarios/respuestas
```

---

## Comentarios

```
GET  /api/comentarios/curso/{id_curso}
GET  /api/comentarios/usuario/{id_usuario}
POST /api/comentarios
```

---

## Auditoría

```
GET /api/auditoria/curso/{id_curso}
GET /api/auditoria/curso/{id_curso}/usuario/{id_usuario}
GET /api/auditoria/examenes/curso/{id_curso}/usuario/{id_usuario}
GET /api/auditoria/cuestionarios/curso/{id_curso}/usuario/{id_usuario}
GET /api/auditoria/usuarios-completados/curso/{id_curso}
```

---

## Estadísticas y Reportes

```
GET /api/estadisticas/curso/{id_curso}
GET /api/estadisticas/instructor/{id_instructor}
GET /api/reportes/curso/{id_curso}
```