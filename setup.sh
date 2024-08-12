DATABASE_NAME=isomorphic-fetch-issue
echo "Creating database $DATABASE_NAME..."
turso db create $DATABASE_NAME
echo "Setting up database $DATABASE_NAME..."
turso db shell $DATABASE_NAME < setup.sql
echo "Database $DATABASE_NAME details:"
turso db show $DATABASE_NAME --url
echo "Creating token for database $DATABASE_NAME..."
turso db tokens create $DATABASE_NAME
