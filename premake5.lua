project "YamlCpp"
        kind "StaticLib"
        language "C++"
    
        targetdir "bin/%{cfg.buildcfg}"
        objdir "bin-int/%{cfg.buildcfg}"
    
        files {
            "src/**.h",
            "src/**.cpp",
            
            "include/**.h"
        }
    
        includedirs {
            "%{IncludeDir.YamlCpp}"
        }
        
        defines { "YAML_CPP_STATIC_DEFINE" }
    
        filter "system:windows"
            systemversion "latest"
            cppdialect "C++17"
            staticruntime "off"
    
        filter "system:linux"
            pic "On"
            systemversion "latest"
            cppdialect "C++17"
            staticruntime "off"
    
        filter "configurations:Debug"
            runtime "Debug"
            symbols "on"
    
        filter "configurations:Release"
            runtime "Release"
            optimize "on"
