CREATE TABLE raw.customers (
    customer_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    city TEXT,
    country TEXT,
    signup_date DATE
);

CREATE TABLE raw.products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    brand TEXT,
    price NUMERIC(10,2),
    created_at TIMESTAMP
);

CREATE TABLE raw.orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT,
    order_date TIMESTAMP,
    order_status TEXT,
    shipping_city TEXT,
    shipping_country TEXT
);

CREATE TABLE raw.order_items (
    order_item_id TEXT PRIMARY KEY,
    order_id TEXT,
    product_id TEXT,
    quantity INT,
    unit_price NUMERIC(10,2)
);

CREATE TABLE raw.payments (
    payment_id TEXT PRIMARY KEY,
    order_id TEXT,
    payment_method TEXT,
    payment_status TEXT,
    payment_amount NUMERIC(10,2),
    payment_date TIMESTAMP
);

CREATE TABLE raw.reviews (
    review_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    rating INT,
    review_text TEXT,
    review_date TIMESTAMP
);