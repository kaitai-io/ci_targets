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
pub struct ExprIntDiv {
    pub intU: u32,
    pub intS: i32,
    pub divNegConst: Option<i32>,
    pub divNegSeq: Option<i32>,
    pub divPosConst: Option<i32>,
    pub divPosSeq: Option<i32>,
}

impl KaitaiStruct for ExprIntDiv {
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
        self.intU = self.stream.read_u4le()?;
        self.intS = self.stream.read_s4le()?;
    }
}

impl ExprIntDiv {
    fn divNegConst(&mut self) -> i32 {
        if let Some(x) = self.divNegConst {
            return x;
        }

        self.divNegConst = -9837 / 13;
        return self.divNegConst;
    }
    fn divNegSeq(&mut self) -> i32 {
        if let Some(x) = self.divNegSeq {
            return x;
        }

        self.divNegSeq = self.int_s / 13;
        return self.divNegSeq;
    }
    fn divPosConst(&mut self) -> i32 {
        if let Some(x) = self.divPosConst {
            return x;
        }

        self.divPosConst = 9837 / 13;
        return self.divPosConst;
    }
    fn divPosSeq(&mut self) -> i32 {
        if let Some(x) = self.divPosSeq {
            return x;
        }

        self.divPosSeq = self.int_u / 13;
        return self.divPosSeq;
    }
}
