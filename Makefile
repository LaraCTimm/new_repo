.PHONY: clean All

All:
	@echo "----------Building project:[ ScreenProject - Debug ]----------"
	@"$(MAKE)" -f  "ScreenProject.mk"
clean:
	@echo "----------Cleaning project:[ ScreenProject - Debug ]----------"
	@"$(MAKE)" -f  "ScreenProject.mk" clean
