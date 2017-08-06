##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ScreenProject
ConfigurationName      :=Debug
WorkspacePath          := "C:\Users\l_tim\Google Drive\1 Electrical 3rd Year\Sofware_II\Labs\elen3009-lab1"
ProjectPath            := "C:\Users\l_tim\Google Drive\1 Electrical 3rd Year\Sofware_II\Labs\elen3009-lab1"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Lara
Date                   :=06/08/2017
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ScreenProject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe --std=gnu++14
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/scr_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/screen.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/scr_main.cpp$(ObjectSuffix): scr_main.cpp $(IntermediateDirectory)/scr_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/l_tim/Google Drive/1 Electrical 3rd Year/Sofware_II/Labs/elen3009-lab1/scr_main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/scr_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/scr_main.cpp$(DependSuffix): scr_main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/scr_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/scr_main.cpp$(DependSuffix) -MM "scr_main.cpp"

$(IntermediateDirectory)/scr_main.cpp$(PreprocessSuffix): scr_main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/scr_main.cpp$(PreprocessSuffix) "scr_main.cpp"

$(IntermediateDirectory)/screen.cpp$(ObjectSuffix): screen.cpp $(IntermediateDirectory)/screen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/l_tim/Google Drive/1 Electrical 3rd Year/Sofware_II/Labs/elen3009-lab1/screen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/screen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/screen.cpp$(DependSuffix): screen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/screen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/screen.cpp$(DependSuffix) -MM "screen.cpp"

$(IntermediateDirectory)/screen.cpp$(PreprocessSuffix): screen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/screen.cpp$(PreprocessSuffix) "screen.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


