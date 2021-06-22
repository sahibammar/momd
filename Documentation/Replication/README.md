# Replication

**Merge Replication**

- Merge replication, like transactional replication, typically starts with a snapshot of the publication database objects and data. 

- Subsequent data changes and schema modifications made at the Publisher and Subscribers are tracked with triggers. 

- The Subscriber synchronizes with the Publisher when connected to the network and exchanges all rows that have changed between the Publisher and Subscriber since the last time synchronization occurred
