freeze("$(PORT_DIR)/modules")
include("$(MPY_DIR)/extmod/asyncio")

# Useful networking-related packages.
require("bundle-networking")

# Require some micropython-lib modules.
require("aioespnow")
require("ds18x20")
require("onewire")
require("aioble")
require("cbor2")
