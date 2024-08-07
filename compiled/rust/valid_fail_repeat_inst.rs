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
pub struct ValidFailRepeatInst {
    pub a: Vec<u8>,
    pub inst: Option<Vec<u32>>,
}

impl KaitaiStruct for ValidFailRepeatInst {
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
        if self.inst.len() == 0 {
            self.a = self.stream.read_bytes(0)?;
        }
    }
}

impl ValidFailRepeatInst {
    fn inst(&mut self) -> Vec<u32> {
        if let Some(x) = self.inst {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.inst = vec!();
        while !self.stream.isEof() {
            self.inst.append(self.stream.read_u4be()?);
        }
        self.stream.seek(_pos);
        return self.inst;
    }
}
