host="fabmedical-557442.mongo.cosmos.azure.com"
username="fabmedical-557442"
password="BFQtvpX2c1K5Rx3EyddOprRiPWF8nP6SMMScc5Baxsn4TbowObJtDPuaWUxZTKYPnrNT6sxOtxSPKTLgQt8TGw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done