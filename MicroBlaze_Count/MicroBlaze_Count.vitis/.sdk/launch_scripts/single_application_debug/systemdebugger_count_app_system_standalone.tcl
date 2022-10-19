connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B31B50A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B31B50A-0362d093-0"}
fpga -file D:/FPGA/MicroBlaze_Count/MicroBlaze_Count.vitis/count_app/_ide/bitstream/design_count_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/FPGA/MicroBlaze_Count/MicroBlaze_Count.vitis/design_count_wrapper/export/design_count_wrapper/hw/design_count_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/FPGA/MicroBlaze_Count/MicroBlaze_Count.vitis/count_app/Debug/count_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
