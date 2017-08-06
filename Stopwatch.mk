##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Stopwatch
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
ObjectsFileList        :="Stopwatch.txt"
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
Objects0=$(IntermediateDirectory)/StopWatch.cpp$(ObjectSuffix) $(IntermediateDirectory)/sw_main.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/StopWatch.cpp$(ObjectSuffix): StopWatch.cpp $(IntermediateDirectory)/StopWatch.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/l_tim/Google Drive/1 Electrical 3rd Year/Sofware_II/Labs/elen3009-lab1/StopWatch.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/StopWatch.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/StopWatch.cpp$(DependSuffix): StopWatch.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/StopWatch.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/StopWatch.cpp$(DependSuffix) -MM "StopWatch.cpp"

$(IntermediateDirectory)/StopWatch.cpp$(PreprocessSuffix): StopWatch.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/StopWatch.cpp$(PreprocessSuffix) "StopWatch.cpp"

$(IntermediateDirectory)/sw_main.cpp$(ObjectSuffix): sw_main.cpp $(IntermediateDirectory)/sw_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/l_tim/Google Drive/1 Electrical 3rd Year/Sofware_II/Labs/elen3009-lab1/sw_main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sw_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sw_main.cpp$(DependSuffix): sw_main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sw_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/sw_main.cpp$(DependSuffix) -MM "sw_main.cpp"

$(IntermediateDirectory)/sw_main.cpp$(PreprocessSuffix): sw_main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sw_main.cpp$(PreprocessSuffix) "sw_main.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


