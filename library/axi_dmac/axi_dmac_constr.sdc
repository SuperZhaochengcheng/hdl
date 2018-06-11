

set_false_path -to    [get_registers *axi_dmac*cdc_sync_stage1*]
set_false_path -from  [get_registers *axi_dmac*cdc_sync_fifo_ram*]
set_false_path -from  [get_registers *axi_dmac*eot_mem*]
set_false_path -to    [get_registers *axi_dmac*reset_shift*]

# Debug signals
set_false_path -from  [get_registers *axi_dmac*|*i_request_arb*|cdc_sync_stage2*]  -to [get_registers *axi_dmac*up_rdata*]
set_false_path -from  [get_registers *axi_dmac*|*i_request_arb*|*id*]              -to [get_registers *axi_dmac*up_rdata*]
set_false_path -from  [get_registers *axi_dmac*|*i_request_arb*|address*]          -to [get_registers *axi_dmac*up_rdata*]

