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
pub struct ExprIfIntOps {
    pub skip: Vec<u8>,
    pub it: i16,
    pub boxed: i16,
    pub isEqBoxed: Option<bool>,
    pub isEqPrim: Option<bool>,
}

impl KaitaiStruct for ExprIfIntOps {
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
        self.skip = self.stream.read_bytes(2)?;
        if true {
            self.it = self.stream.read_s2le()?;
        }
        if true {
            self.boxed = self.stream.read_s2le()?;
        }
    }
}

impl ExprIfIntOps {
    fn isEqBoxed(&mut self) -> bool {
        if let Some(x) = self.isEqBoxed {
            return x;
        }

        self.isEqBoxed = self.it == self.boxed;
        return self.isEqBoxed;
    }
    fn isEqPrim(&mut self) -> bool {
        if let Some(x) = self.isEqPrim {
            return x;
        }

        self.isEqPrim = self.it == 16705;
        return self.isEqPrim;
    }
}
