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
pub struct EnumLongRangeS {
    pub f1: Box<EnumLongRangeS__Constants>,
    pub f2: Box<EnumLongRangeS__Constants>,
    pub f3: Box<EnumLongRangeS__Constants>,
    pub f4: Box<EnumLongRangeS__Constants>,
    pub f5: Box<EnumLongRangeS__Constants>,
    pub f6: Box<EnumLongRangeS__Constants>,
    pub f7: Box<EnumLongRangeS__Constants>,
}

impl KaitaiStruct for EnumLongRangeS {
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
        self.f1 = self.stream.read_s8be()?;
        self.f2 = self.stream.read_s8be()?;
        self.f3 = self.stream.read_s8be()?;
        self.f4 = self.stream.read_s8be()?;
        self.f5 = self.stream.read_s8be()?;
        self.f6 = self.stream.read_s8be()?;
        self.f7 = self.stream.read_s8be()?;
    }
}

impl EnumLongRangeS {
}
enum EnumLongRangeS__Constants {
    LONG_MIN,
    INT_BELOW_MIN,
    INT_MIN,
    ZERO,
    INT_MAX,
    INT_OVER_MAX,
    LONG_MAX,
}
