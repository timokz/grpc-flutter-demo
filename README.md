# gRPC and Flutter Demo

This is a simple demo project that demonstrates how to use gRPC with Flutter. The project consists of a monorepo containing:

- Server-side implementation in dart
- Flutter project that can build for android, win + linux desktop
- A shared model class package 
- Proto folder containing the definition of gRPC services and messages

The project demonstrates how to implement a simple pizza ordering simulation, enabling the simultaneous display and sharing of order data between two or more clients.

## Installation and Usage

Quickly put together, this repo is somewhat messy and contains data that could be locally generated, but a quick guide to run the demo would be:

1. Clone the repository
2. Make sure the data classes of client and server are up to date - run:  
   `protoc --dart_out=grpc:$/lib/protos/generated protos/pizza.proto`  
3. Manually start the server and clients, or use the provided .vscode launch option `Flutter-All `(might not work on windows).
4. Try the demo! 

## Disclaimer

- The project is a simple demo and doesn't always adhere to best practices.
- Clients have a limited user interface and may not handle all error cases.