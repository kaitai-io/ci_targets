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
pub struct TermStrzUtf16V2 {
    pub s1: String,
    pub s2: String,
    pub s3: String,
}

impl KaitaiStruct for TermStrzUtf16V2 {
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
        self.s1 = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
        self.s2 = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
        self.s3 = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl TermStrzUtf16V2 {
}
