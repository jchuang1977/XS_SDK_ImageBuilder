cmd_arch/arm64/boot/dts/arm/foundation-v8.dtb := mkdir -p arch/arm64/boot/dts/arm/ ; gcc -E -Wp,-MD,arch/arm64/boot/dts/arm/.foundation-v8.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -I./arch/arm64/boot/dts -I./arch/arm64/boot/dts/include -I./include/ -Iarch/arm64/boot/dts -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/arm/.foundation-v8.dtb.dts.tmp arch/arm64/boot/dts/arm/foundation-v8.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/arm/foundation-v8.dtb -b 0 -iarch/arm64/boot/dts/arm/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm64/boot/dts/arm/.foundation-v8.dtb.d.dtc.tmp arch/arm64/boot/dts/arm/.foundation-v8.dtb.dts.tmp ; cat arch/arm64/boot/dts/arm/.foundation-v8.dtb.d.pre.tmp arch/arm64/boot/dts/arm/.foundation-v8.dtb.d.dtc.tmp > arch/arm64/boot/dts/arm/.foundation-v8.dtb.d

source_arch/arm64/boot/dts/arm/foundation-v8.dtb := arch/arm64/boot/dts/arm/foundation-v8.dts

deps_arch/arm64/boot/dts/arm/foundation-v8.dtb := \
  arch/arm64/boot/dts/arm/foundation-v8.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi \
  arch/arm64/boot/dts/arm/foundation-v8-spin-table.dtsi \

arch/arm64/boot/dts/arm/foundation-v8.dtb: $(deps_arch/arm64/boot/dts/arm/foundation-v8.dtb)

$(deps_arch/arm64/boot/dts/arm/foundation-v8.dtb):
