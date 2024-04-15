// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use enum_deep::container1::container2::animal::Animal;
use enum_0::animal::Animal;

#[derive(Default)]
pub struct EnumImportSeq {
    pub pet1: Box<Enum0__Animal>,
    pub pet2: Box<EnumDeep__Container1__Container2__Animal>,
}

impl KaitaiStruct for EnumImportSeq {
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
        self.pet1 = self.stream.read_u4le()?;
        self.pet2 = self.stream.read_u4le()?;
    }
}

impl EnumImportSeq {
}
