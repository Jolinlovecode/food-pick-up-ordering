DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  dish_id INTEGER REFERENCES dishes(id) ON DELETE CASCADE,
  -- start_time TIMESTAMP,
  -- end_time TIMESTAMP,
  -- restaurant_id INTEGER REFERENCES restaurant(id) ON DELETE CASCADE,
  status VARCHAR(225) DEFAULT 'added'
);
