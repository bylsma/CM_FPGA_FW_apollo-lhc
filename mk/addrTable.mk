#################################################################################
# Clean
#################################################################################
clean_CM:
	@echo "Cleaning up address table autogenerated and downloaded files"
	@rm -f os/*.yaml
	@rm -f kernel/*.yaml
	@echo rm -rf $(shell find ./kernel/ -maxdepth 1 | grep "hw_" | grep -v "hw_user" | xargs)	
	@echo rm -rf $(shell find ./os/ -maxdepth 2 | grep "modules" | xargs)
#################################################################################
# address tables
#################################################################################
ADDRESS_TABLE ?= ${MAKE_PATH}/os/address_table/address_apollo.xml

${ADDRESS_TABLE}: ${MAKE_PATH}/os/slaves.yaml ${MAKE_PATH}/CM.yaml
	LD_LIBRARY_PATH+=/opt/cactus/lib ./scripts/BuildAddressTable.py -l ${MAKE_PATH}/os/slaves.yaml --CM ${MAKE_PATH}/CM.yaml

address_table: ${ADDRESS_TABLE}
