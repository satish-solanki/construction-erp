CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100)
);

CREATE TABLE purchase_orders (
    id SERIAL PRIMARY KEY,
    po_number VARCHAR(20) UNIQUE NOT NULL,
    supplier_id INTEGER REFERENCES suppliers(id),
    total_amount DECIMAL(12,2) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'pending'
);

-- Add other tables (inventory, invoices, projects...)