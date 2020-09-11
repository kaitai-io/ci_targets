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
pub struct ValidFailInst {
    pub a: u8,
    pub inst: Option<u8>,
}

impl KaitaiStruct for ValidFailInst {
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
        if self.inst >= 0 {
            self.a = self.stream.read_u1()?;
        }
    }
}

impl ValidFailInst {
    fn inst(&mut self) -> u8 {
        if let Some(x) = self.inst {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(5);
        self.inst = self.stream.read_u1()?;
        self.stream.seek(_pos);
        return self.inst;
    }
}
