message("Adding internal plugin: FFTPlugin")
set(pluginName "FFTPlugin")
set(pluginSrc "${srcPluginsDir}/FFTPlugin")
set(pluginCross "${crossDir}/plugins/FFTPlugin")
set(pluginPlatform "${targetPlatform}/plugins/FFTPlugin")
set(LINKLIBS )
add_definitions(-DSQUEAK_BUILTIN_PLUGIN)
list(APPEND sources  "${pluginSrc}/FFTPlugin.c")
include_directories(${pluginSrc} ${pluginCross} ${targetPlatform}/plugins/${pluginName})
add_library(FFTPlugin STATIC ${sources})
set(linkFlags "${linkFlags}")
set_property(TARGET FFTPlugin PROPERTY LINK_FLAGS "${linkFlags}")
IF (FFTPlugin_dependencies)
add_dependencies(FFTPlugin ${FFTPlugin_dependencies})
ENDIF (FFTPlugin_dependencies)
