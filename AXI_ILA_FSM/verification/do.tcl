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

