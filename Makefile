TARGETS=bls12pairing ecadd ecmul ecpairing identity keccak256 ripemd160 sha256

all:
	@cargo build --release --target wasm32-unknown-unknown
	@$(foreach i,$(TARGETS),echo Chiseling $(i) && chisel target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm;)