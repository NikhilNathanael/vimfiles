vim9script

const path = expand('<script>:h') .. "/vim_dll_test/"
const lib_path = path .. "target/release/vim_dll_test"
var compiled = <bool>filereadable(lib_path)

def Compile()
	if executable("cargo")
		echo "Compiling crate"
		const output = system("cargo build --manifest-path=" .. path .. "Cargo.toml" .. " --release")
		echo "Compilation successful"
		compiled = true
	else 
		echo "Could not compile program because cargo does not exist"
		echo "Please install cargo via rustup"
	endif
enddef

command DllCompile call Compile()

def g:EchoStrings()
	echom strings
enddef
