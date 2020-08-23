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
pub struct CombineEnum {
    pub enumU4: Box<CombineEnum__Animal>,
    pub enumU2: Box<CombineEnum__Animal>,
    pub enumU4U2: Option<Box<CombineEnum__Animal>>,
}

impl KaitaiStruct for CombineEnum {
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
        self.enumU4 = self.stream.read_u4le()?;
        self.enumU2 = self.stream.read_u2le()?;
    }
}

impl CombineEnum {
    fn enumU4U2(&mut self) -> Box<CombineEnum__Animal> {
        if let Some(x) = self.enumU4U2 {
            return x;
        }

        self.enumU4U2 = if false { self.enum_u4 } else { self.enum_u2};
        return self.enumU4U2;
    }
}
enum CombineEnum__Animal {
    PIG,
    HORSE,
}
