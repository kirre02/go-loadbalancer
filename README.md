# Loadbalancer

## Why ?

I wanted to get a better understanding of how a loadbalancer and I wanted to build something that was web related and so I landed on this.

## How does this simple loadbalancer work ?

There are different strategies for distributing load between a set of backends.
For example,
- Round Robin - Distribute load equally, assumes all backends have the same processing power
- Weighted Round Robin - Additional weights can be given considering the backend's processing power
- Least Connections - Load is distributed to the servers with least active connections

But for this project I wanted to implement the simplest one, round robin.

## How does Round Robin Selection work ?

Round Robin gives equal opportunities for workers to perform tasks in turns.