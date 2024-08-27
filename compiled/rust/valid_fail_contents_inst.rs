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
pub struct ValidFailContentsInst {
    pub a: Vec<u8>,
    pub foo: Option<Vec<u8>>,
}

impl KaitaiStruct for ValidFailContentsInst {
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
        if self.foo.len() == 0 {
            self.a = self.stream.read_bytes(0)?;
        }
    }
}

impl ValidFailContentsInst {
    fn foo(&mut self) -> Vec<u8> {
        if let Some(x) = self.foo {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.foo = self.stream.read_bytes(2)?;
        self.stream.seek(_pos);
        return self.foo;
    }
}
