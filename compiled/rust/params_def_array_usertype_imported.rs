// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use hello_world::HelloWorld;

#[derive(Default)]
pub struct ParamsDefArrayUsertypeImported {
    pub hw0One: Option<u8>,
    pub hw1One: Option<u8>,
}

impl KaitaiStruct for ParamsDefArrayUsertypeImported {
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
    }
}

impl ParamsDefArrayUsertypeImported {
    fn hw0One(&mut self) -> u8 {
        if let Some(x) = self.hw0One {
            return x;
        }

        self.hw0One = self.hws_param[0].one;
        return self.hw0One;
    }
    fn hw1One(&mut self) -> u8 {
        if let Some(x) = self.hw1One {
            return x;
        }

        self.hw1One = self.hws_param[1].one;
        return self.hw1One;
    }
}
