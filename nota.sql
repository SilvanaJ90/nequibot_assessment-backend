{
  "message_id": "msg_123457",
  "session_id": "sess_123456",
  "sender_id": "sender_1",
  "sender_type": "user",
  "content": "Hola, este es un mensaje de prueba"
}


Insertar el remitente (sender)
INSERT INTO senders (
    id,
    email,
    password_hash,
    first_name,
    last_name,
    is_active,
    type,
    created_at,
    updated_at
) VALUES (
    'sender_1',                  -- id único
    'user@example.com',           -- email de ejemplo
    'hashed_password',            -- hash de contraseña
    'Silvana',                    -- nombre
    'Jaramillo',                  -- apellido
    TRUE,                         -- is_active
    'user',                       -- type (puede ser 'user', 'bot', etc.)
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
);

2️⃣ Insertar la sesión (session)
INSERT INTO sessions (
    id,
    session_id,
    user_id,
    title,
    created_at,
    updated_at
) VALUES (
    'session_1',               -- id interno único
    'sess_123456',             -- session_id público que usarás en la API
    'sender_1',                -- debe existir en senders.id
    'Primera sesión',          -- título opcional
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
);