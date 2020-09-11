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
pub struct ValidShort {
    pub magic1: Vec<u8>,
    pub uint8: u8,
    pub sint8: i8,
    pub magicUint: String,
    pub uint16: u16,
    pub uint32: u32,
    pub uint64: u64,
    pub magicSint: String,
    pub sint16: i16,
    pub sint32: i32,
    pub sint64: i64,
}

impl KaitaiStruct for ValidShort {
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
        self.magic1 = self.stream.read_bytes(6)?;
        self.uint8 = self.stream.read_u1()?;
        self.sint8 = self.stream.read_s1()?;
        self.magicUint = panic!("Unimplemented encoding for bytesToStr: {}", "utf-8");
        self.uint16 = self.stream.read_u2le()?;
        self.uint32 = self.stream.read_u4le()?;
        self.uint64 = self.stream.read_u8le()?;
        self.magicSint = panic!("Unimplemented encoding for bytesToStr: {}", "utf-8");
        self.sint16 = self.stream.read_s2le()?;
        self.sint32 = self.stream.read_s4le()?;
        self.sint64 = self.stream.read_s8le()?;
    }
}

impl ValidShort {
}
