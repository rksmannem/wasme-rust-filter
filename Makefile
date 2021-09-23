REGISTRY?=webassemblyhub.io/rksmannem
WASM_FILE_NAME?=dl-router-rust.wasm
RELEASE?=v0.1.0

WASME?=wasme
BUILDER_IMAGE_NAME?=quay.io/solo-io/ee-builder:0.0.33

.PHONY: build
build:
	$(WASME) build rust . -i ${BUILDER_IMAGE_NAME}  -b . -t ${REGISTRY}/${WASM_FILE_NAME}:${RELEASE} -c runtime-config.json -v

deploy-gloo:
	$(WASME) deploy gloo ${REGISTRY}/${WASM_FILE_NAME}:${RELEASE} --id=dl-router-rust

undeploy-gloo:
	$(WASME) undeploy gloo ${REGISTRY}/${WASM_FILE_NAME}:${RELEASE} --id=dl-router-rust

deploy-envoy:
	$(WASME) deploy envoy ${REGISTRY}/${WASM_FILE_NAME}:${RELEASE} --envoy-image=istio/proxyv2:1.6.5

undeploy-envoy:
	$(WASME) undeploy istio ${REGISTRY}/${WASM_FILE_NAME}:${RELEASE} -v