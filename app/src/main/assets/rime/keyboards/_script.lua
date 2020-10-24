require "import"
import "java.io.*"
local fs=File(service.getLuaExtDir("script")).list({
   accept=function(dir, name)
      return  File(dir,name).isFile();
   end
})
fs=luajava.astable(fs)
return {
  width="25",
  type="long",
  keys=fs
}
