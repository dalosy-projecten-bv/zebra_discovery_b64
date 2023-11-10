# zebra_discovery_b64

This library decodes the discovery_b64 message that Zebra printers will send when they connect to a websocket endpoint, also named WebLink in the Zebra documentation.

## Features
- Decodes the raw base64 string into an easy to use strongly typed class.
- For backwards compatibility, the decoded value has a property `discoveryDataMap` that has the same entries as the Zebra SDK provides with the `getDiscoveryDataMap()` function.
- The decode process preserves the original source bytes per item.
- Each decoded item has an error value. This indicates if errors were encountered while decoding.
- A `discovery` object has an `error` property that can be used to test if there was an error while decoding.
- A `discovery` object can be serialized to json for easy further processing

## Getting started
Add this package to your `pubspec.yaml`.

## Usage
```Dart
final discoveryB64 = "OiwuBAUBAAFaQlIAAEQzSjE5MzIwNjcyMgAAA....";

final discovery = Discovery.fromDiscoveryB64(discoveryB64);
```
The `discovery` variable can be an instance of one of these types.
- `DiscoveryLegacy`
- `DiscoveryAdvancedV0`
- `DiscoveryAdvancedV1`
- `DiscoveryAdvancedV2`
- `DiscoveryAdvancedV3`
- `DiscoveryAdvancedV4`

The `DiscoveryAdvancedV4` is used for versions 4 and higher.

The actual type depends on version information provided in the discovery_b64 message.

## Additional information
This code aims compatability with
- Link-OS multiplatorm SDK 2.15.1
- WebServices v. 2.14.5198

Samples decoded messages can be found in the [test_resources](https://github.com/dalosy-projecten-bv/zebra_discovery_b64/tree/main/test/test_resources) folder.
