FROM dxflrs/garage:v2.3.0 AS garage
FROM alpine:3.20
COPY --from=garage /garage /garage
COPY garage.toml /etc/garage.toml
CMD ["/garage", "server", "--single-node", "--default-bucket"]
