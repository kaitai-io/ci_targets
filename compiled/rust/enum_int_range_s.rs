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
pub struct EnumIntRangeS {
    pub f1: Box<EnumIntRangeS__Constants>,
    pub f2: Box<EnumIntRangeS__Constants>,
    pub f3: Box<EnumIntRangeS__Constants>,
}

impl KaitaiStruct for EnumIntRangeS {
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
        self.f1 = self.stream.read_s4be()?;
        self.f2 = self.stream.read_s4be()?;
        self.f3 = self.stream.read_s4be()?;
    }
}

impl EnumIntRangeS {
}
enum EnumIntRangeS__Constants {
    INT_MIN,
    ZERO,
    INT_MAX,
}
