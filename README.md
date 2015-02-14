# bwi-user
BWI User Data

## Manually Create DB
 * psql -d postgres -c "create database bwi_development_fe;"
 * psql -d bwi_development_fe -f ./db/fe_structure.sql

## Populate Data
 * pg_dump -f /var/backups/bwi/fe_data.sql --data-only -t users -t bwi_auth_sessions bwi-backend_production
 * psql -d bwi-user -f /var/backups/bwi/fe_data.sql

