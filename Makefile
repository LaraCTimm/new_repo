.PHONY: clean All

All:
	@echo "----------Building project:[ Lab1 - Debug ]----------"
	@"$(MAKE)" -f  "Lab1.mk"
clean:
	@echo "----------Cleaning project:[ Lab1 - Debug ]----------"
	@"$(MAKE)" -f  "Lab1.mk" clean
