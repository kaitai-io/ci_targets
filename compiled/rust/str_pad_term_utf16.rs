// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;

#[derive(Default)]
pub struct StrPadTermUtf16 {
    pub strTerm: String,
    pub strTermInclude: String,
    pub strTermAndPad: String,
}

impl KaitaiStruct for StrPadTermUtf16 {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.strTerm = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
        self.strTermInclude = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
        self.strTermAndPad = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl StrPadTermUtf16 {
}
