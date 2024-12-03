#!/bin/bash
clin=$1
psql_db=$2
echo ${psql_db}
echo ${clin}
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*shared_buffers.*/shared_buffers = 128MB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*min_wal_size.*/min_wal_size = 100MB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*max_wal_size.*/max_wal_size = 2GB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#effective_cache_size.*/effective_cache_size = 512MB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#maintenance_work_mem.*/maintenance_work_mem = 128MB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#checkpoint_completion_target.*/checkpoint_completion_target = 0.9/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#wal_buffers.*/wal_buffers = 3932kB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#default_statistics_target.*/default_statistics_target = 100/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#random_page_cost.*/random_page_cost = 4/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#effective_io_concurrency.*/effective_io_concurrency = 2/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#work_mem.*/work_mem = 546kB/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#wal_level.*/wal_level = minimal/" /var/lib/pgsql/data/userdata/postgresql.conf'
$clin exec "${psql_db}" -- sh -c 'sed -i "s/^\s*#max_wal_senders.*/max_wal_senders = 0/" /var/lib/pgsql/data/userdata/postgresql.conf'
