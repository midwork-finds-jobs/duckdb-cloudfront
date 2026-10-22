# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
duckdb_extension_load(cloudfront
    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}
    LOAD_TESTS
)
# Link into the test binaries: ci-tools v2.0 no longer does, so `require cloudfront` tests would be skipped
duckdb_extension_statically_link(cloudfront)

# Any extra extensions that should be built
# e.g.: duckdb_extension_load(json)