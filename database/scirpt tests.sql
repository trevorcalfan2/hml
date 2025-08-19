-- ⚠️ Este script elimina y recrea solo las tablas nuevas/requeridas, NO la tabla 'roles'.

DROP TABLE IF EXISTS documento_iso_versions;
DROP TABLE IF EXISTS documento_iso_logs;
DROP TABLE IF EXISTS documento_iso_role;
DROP TABLE IF EXISTS documento_iso;
DROP TABLE IF EXISTS process;
DROP TABLE IF EXISTS doctype;
DROP TABLE IF EXISTS area;

CREATE TABLE area (
    area_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE doctype (
    doctype_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE process (
    process_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    area_id BIGINT,
    FOREIGN KEY (area_id) REFERENCES area(area_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE documento_iso (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    responsable VARCHAR(255) NOT NULL,
    fecha_revision DATE,
    fecha_aprobacion DATE,
    aprobado_por VARCHAR(255),
    modificaciones TEXT,
    archivo VARCHAR(255),
    historial_versiones TEXT,
    anio INT,
    mes VARCHAR(20),
    registro VARCHAR(100),
    comentarios TEXT,
    actividad TEXT,
    process_id BIGINT,
    doctype_id BIGINT,
    estado_workflow ENUM('Borrador', 'En revisión', 'Aprobado', 'Rechazado') DEFAULT 'Borrador',
    aprobador_id BIGINT UNSIGNED,
    fecha_aprobacion_workflow DATETIME NULL,
    FOREIGN KEY (process_id) REFERENCES process(process_id),
    FOREIGN KEY (doctype_id) REFERENCES doctype(doctype_id)
    -- FOREIGN KEY (aprobador_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE documento_iso_versions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    documento_iso_id BIGINT NOT NULL,
    archivo VARCHAR(255) NOT NULL,
    comentario VARCHAR(255),
    user_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (documento_iso_id) REFERENCES documento_iso(id)
    -- FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE documento_iso_logs (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    documento_iso_id BIGINT NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
    accion VARCHAR(255),
    descripcion TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (documento_iso_id) REFERENCES documento_iso(id)
    -- FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE documento_iso_role (
    documento_iso_id BIGINT NOT NULL,
    role_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (documento_iso_id, role_id),
    FOREIGN KEY (documento_iso_id) REFERENCES documento_iso(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- DATOS DE EJEMPLO

INSERT INTO area (nombre) VALUES
    ('Calidad'),
    ('Producción'),
    ('Recursos Humanos');

INSERT INTO doctype (nombre) VALUES
    ('Procedimiento'),
    ('Instructivo'),
    ('Manual'),
    ('Registro');

INSERT INTO process (nombre, area_id) VALUES
    ('Control de Documentos', 1),
    ('Capacitación', 3),
    ('Mantenimiento', 2);

INSERT INTO documento_iso (
    estado, responsable, fecha_revision, fecha_aprobacion, aprobado_por, modificaciones, archivo, historial_versiones,
    anio, mes, registro, comentarios, actividad, process_id, doctype_id, estado_workflow, aprobador_id, fecha_aprobacion_workflow
) VALUES
    ('Vigente', 'Juan Perez', '2024-06-01', '2024-06-15', 'Maria Gomez', 'Primera creación', 'doc1.pdf', NULL, 2024, 'Junio', 'REG-001', 'OK', 'Revisión inicial', 1, 1, 'Aprobado', 7, NOW()),
    ('Obsoleto', 'Ana Lopez', '2024-05-10', NULL, NULL, 'Obsoleto por actualización', 'doc2.pdf', NULL, 2023, 'Mayo', 'REG-002', 'OK', 'Actualizado', 2, 2, 'Borrador', NULL, NULL);

-- Ajusta los IDs de roles a los que existan en tu tabla roles:
INSERT INTO documento_iso_role (documento_iso_id, role_id) VALUES
    (1, 7),
    (1, 8),
    (2, 9);

INSERT INTO documento_iso_versions (documento_iso_id, archivo, comentario, user_id)
    VALUES (1, 'doc1_v1.pdf', 'Versión inicial', 7),
           (1, 'doc1_v2.pdf', 'Corrección de errores', 8);

INSERT INTO documento_iso_logs (documento_iso_id, user_id, accion, descripcion)
    VALUES (1, 7, 'Creación', 'Documento creado'),
           (1, 8, 'Edición', 'Corrección de errores en el documento');
CREATE TABLE admin_role (
    admin_id BIGINT UNSIGNED NOT NULL,
    role_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (admin_id, role_id),
    FOREIGN KEY (admin_id) REFERENCES admins(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
) ENGINE=InnoDB;
