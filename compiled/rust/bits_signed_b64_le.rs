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
pub struct BitsSignedB64Le {
    pub aNum: u64,
    pub aBit: bool,
    pub bNum: u64,
    pub bBit: bool,
}

impl KaitaiStruct for BitsSignedB64Le {
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
        self.aNum = self.stream.read_bits_int(63)?;
        self.aBit = self.stream.read_bits_int(1)? != 0;
        self.bNum = self.stream.read_bits_int(63)?;
        self.bBit = self.stream.read_bits_int(1)? != 0;
    }
}

impl BitsSignedB64Le {
}
