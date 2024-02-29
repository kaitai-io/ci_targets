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
pub struct ExprToITrailing {
    pub toIGarbage: Option<i32>,
    pub toIR10: Option<i32>,
    pub toIR16: Option<i32>,
}

impl KaitaiStruct for ExprToITrailing {
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

impl ExprToITrailing {
    fn toIGarbage(&mut self) -> i32 {
        if let Some(x) = self.toIGarbage {
            return x;
        }

        self.toIGarbage = "123_.^".parse().unwrap();
        return self.toIGarbage;
    }
    fn toIR10(&mut self) -> i32 {
        if let Some(x) = self.toIR10 {
            return x;
        }

        self.toIR10 = "9173abc".parse().unwrap();
        return self.toIR10;
    }
    fn toIR16(&mut self) -> i32 {
        if let Some(x) = self.toIR16 {
            return x;
        }

        self.toIR16 = panic!("Converting from string to int in base {} is unimplemented", 16);
        return self.toIR16;
    }
}
