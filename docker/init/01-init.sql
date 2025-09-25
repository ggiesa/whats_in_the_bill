-- Initialize the database with PGVector extension

-- Create the pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Create a sample table to demonstrate vector functionality
-- This can be customized based on your specific use case
CREATE TABLE IF NOT EXISTS embeddings (
    id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
    embedding vector(1536), -- OpenAI embeddings are 1536 dimensions
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create an index for vector similarity search (optional but recommended for performance)
-- Uncomment the line below when you start adding data
-- CREATE INDEX ON embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);

-- Grant necessary permissions
GRANT ALL PRIVILEGES ON TABLE embeddings TO postgres;
GRANT USAGE, SELECT ON SEQUENCE embeddings_id_seq TO postgres;
