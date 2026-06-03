CREATE TABLE IF NOT EXISTS activations (
    id SERIAL PRIMARY KEY,
    license_key TEXT NOT NULL,
    device_id TEXT NOT NULL,
    activated_at TIMESTAMP DEFAULT NOW(),
    last_seen TIMESTAMP DEFAULT NOW(),
    UNIQUE(license_key, device_id)
);