-- Local development login user.
-- Change this credential before using the application outside development.

INSERT IGNORE INTO users (full_name, username, email, password, enabled, created_at) VALUES
    ('Veterinary Administrator', 'veterinary', 'veterinary@veterinary.local', '$2b$10$gtCCwkR72l4SEO3dmIEcxuZYiRTKsTcXHH2jBXFCzPxnIcTvuuxSW', 1, NOW());

INSERT IGNORE INTO user_roles (user_id, role_id)
SELECT users.id, roles.id
FROM users
INNER JOIN roles ON roles.name = 'ROLE_ADMIN'
WHERE users.username = 'veterinary';
