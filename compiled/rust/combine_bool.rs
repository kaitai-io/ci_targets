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
pub struct CombineBool {
    pub boolBit: bool,
    pub boolCalc: Option<bool>,
    pub boolCalcBit: Option<bool>,
}

impl KaitaiStruct for CombineBool {
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
        self.boolBit = self.stream.read_bits_int(1)? != 0;
    }
}

impl CombineBool {
    fn boolCalc(&mut self) -> bool {
        if let Some(x) = self.boolCalc {
            return x;
        }

        self.boolCalc = false;
        return self.boolCalc;
    }
    fn boolCalcBit(&mut self) -> bool {
        if let Some(x) = self.boolCalcBit {
            return x;
        }

        self.boolCalcBit = if true { self.bool_calc } else { self.bool_bit};
        return self.boolCalcBit;
    }
}
