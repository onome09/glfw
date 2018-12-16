project "GLFW"

kind "StaticLib"
language "C"

targetdir ("bin/" .. outputdir .. "/%{prj.name}")
targetdir ("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
   "include/GLFW/glfw3.h",
   "include/GLFW/glfw3native.h",
   "src/context.c",
   "src/init.c",
   "src/input.c",
   "src/monitor.c",
   "src/vulkan.c",
   "src/window.c"
}

filter "system:windows"
buildoptions { "-std=c++11", "-lgdi32"}
systemversion "10.0.17134.0"
staticruntime "On"

files
{
   "win32_init.c",
   "win32_joystick.c",
   "win32_monitor.c",
   "win32_time.c",
   "win32_thread.c",
   "win32_window.c",
   "wgl_context.c",
   "egl_context.c",
   "osmesa_context.c"
}

defines
{
   "_GLFW_WIN32"
   "_CRT_SECURE_NO_WARNINGS"
}

filter { "system:windows", "configurations:Release" }
buildoptions "/MT"
