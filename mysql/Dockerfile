FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions
# these above environment variables we mandatory to setup for our schema
# we load these variables only our db is load schema
# if you manually installed mysql at the time our responsibility to start our DB using systemctl
# But in Docker systemctl is not working
# so using this scripts and environment variables to help to start our db

# mandatorly we load schema, this is primary set up for any project
COPY scripts/*.sql /docker-entrypoint-initdb.d/

# ( /docker-entrypoint-initdb.d )
# When a container is started for the first time, a new database with the specified name will be created and initialized with the provided configuration variables. Furthermore, it will execute files with extensions .sh, .sql, .sql.gz, .sql.bz2, .sql.xz, and .sql.zst that are found in /docker-entrypoint-initdb.d