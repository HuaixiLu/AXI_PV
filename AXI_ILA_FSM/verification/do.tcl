analyze -sva  \
  emaxi_w.v \
  esaxi_w.v \
  top_w.v \
  axi_protocol.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst

assert -name awready_assert {(fsm_axi_awready == ila_axi_awready)}
assert -name awvalid_assert {(fsm_axi_awvalid == ila_axi_awvalid)}
assert -name wready_assert {(fsm_axi_wready == ila_axi_wready)}
assert -name wvalid_assert {(fsm_axi_wvalid == ila_axi_wvalid)}

