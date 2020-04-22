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
pub struct BitsSeqEndianCombo {
    pub be1: u64,
    pub be2: u64,
    pub le3: u64,
    pub be4: u64,
    pub le5: u64,
    pub le6: u64,
    pub le7: u64,
    pub be8: bool,
}

impl KaitaiStruct for BitsSeqEndianCombo {
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
        self.be1 = self.stream.read_bits_int(6)?;
        self.be2 = self.stream.read_bits_int(10)?;
        self.le3 = self.stream.read_bits_int(8)?;
        self.be4 = self.stream.read_bits_int(8)?;
        self.le5 = self.stream.read_bits_int(5)?;
        self.le6 = self.stream.read_bits_int(6)?;
        self.le7 = self.stream.read_bits_int(5)?;
        self.be8 = self.stream.read_bits_int(1)? != 0;
    }
}

impl BitsSeqEndianCombo {
}
