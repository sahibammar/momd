# Replication

**Replication Types**

Snapshot publication:
The Publisher sends a snapshot of the published data to Subscribers at scheduled intervals.

Transactional publication:
The Publisher streams transactions to the Subscribers after they receive an initial snapshot of the published data.

Peer-to-Peer publication:
Peer-Peer publication enables multi-master replication. The publisher streams transactions to all the peers in the topology. All peer nodes can read and write changes and the changes are propagated to all the nodes in the topology.

Merge publication:
The Publisher and Subscribers can update the published data independently after the Subscribers receive an initial snapshot of the published data. Changes are merged periodically. Microsoft SQL Server Compact Edition can only subscribe to merge publications.


**Merge Replication**

- Merge replication, like transactional replication, typically starts with a snapshot of the publication database objects and data. 
- Subsequent data changes and schema modifications made at the Publisher and Subscribers are tracked with triggers. 
- The Subscriber synchronizes with the Publisher when connected to the network and exchanges all rows that have changed between the Publisher and Subscriber since the last time synchronization occurred

Merge replication is typically used in server-to-client environments. Merge replication is appropriate in any of the following situations:

- Multiple Subscribers might update the same data at various times and propagate those changes to the Publisher and to other Subscribers.
- Subscribers need to receive data, make changes offline, and later synchronize changes with the Publisher and other Subscribers.
- Each Subscriber requires a different partition of data.
- Conflicts might occur and, when they do, you need the ability to detect and resolve them.
- The application requires net data change rather than access to intermediate data states. For example, if a row changes five times at a Subscriber before it synchronizes with a Publisher, the row will change only once at the Publisher to reflect the net data change (that is, the fifth value).

Merge replication allows various sites to work autonomously and later merge updates into a single, uniform result. Because updates are made at more than one node, the same data may have been updated by the Publisher and by more than one Subscriber. Therefore, conflicts can occur when updates are merged and merge replication provides a number of ways to handle conflicts

![Alt Replication Diagram](./replication_diagram.png?raw=true "Replication Diagram")            


**References**
Install SQL Server replication, Jul 26, 2017 https://docs.microsoft.com/en-us/sql/database-engine/install-windows/install-sql-server-replication?view=sql-server-ver15

Merge Replication, Mar 14, 2017 https://docs.microsoft.com/en-us/sql/relational-databases/replication/merge/merge-replication?view=sql-server-ver15

SQL Merge Replication, Jun 17, 2020 https://www.youtube.com/watch?v=rSeiw9-QapQ

**Tutorials**

Tutorial: Prepare SQL Server for replication (publisher, distributor, subscriber) https://docs.microsoft.com/en-us/sql/relational-databases/replication/tutorial-preparing-the-server-for-replication?view=sql-server-ver15

Tutorial: Configure replication between a server and mobile clients (merge) https://docs.microsoft.com/en-us/sql/relational-databases/replication/tutorial-replicating-data-with-mobile-clients?view=sql-server-ver15
