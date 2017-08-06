.PHONY: clean All

All:
	@echo "----------Building project:[ Stopwatch - Debug ]----------"
	@"$(MAKE)" -f  "Stopwatch.mk"
clean:
	@echo "----------Cleaning project:[ Stopwatch - Debug ]----------"
	@"$(MAKE)" -f  "Stopwatch.mk" clean
