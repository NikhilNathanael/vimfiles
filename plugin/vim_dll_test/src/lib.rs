#![allow(static_mut_refs)]
use std::ffi::{c_char, CStr, CString};

static mut STRINGS: Vec<*const c_char> = Vec::new();

#[unsafe(no_mangle)]
extern "C" fn test(input: *const c_char) -> *const c_char {
	// println!("{:?}", input);
	let input = match unsafe{CStr::from_ptr(input)}.to_str() {
		Ok(x) => x,
		Err(_) => return std::ptr::null_mut()
	};
	let output = format!("Hello{}", input);
	let output = match CString::new(output) {
		Ok(x) => x,
		Err(_) => return std::ptr::null_mut(),
	}.into_raw();

	unsafe{
		STRINGS.push(output);
	}
	output
}
