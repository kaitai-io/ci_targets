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
pub struct ExprBits {
    pub enumSeq: Box<ExprBits__Items>,
    pub a: u64,
    pub byteSize: Vec<u8>,
    pub repeatExpr: Vec<i8>,
    pub switchOnType: i8,
    pub switchOnEndian: Box<ExprBits__EndianSwitch>,
    pub enumInst: Option<Box<ExprBits__Items>>,
    pub instPos: Option<i8>,
}

impl KaitaiStruct for ExprBits {
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
        self.enumSeq = self.stream.read_bits_int(2)?;
        self.a = self.stream.read_bits_int(3)?;
        self.stream.alignToByte();
        self.byteSize = self.stream.read_bytes(self.a)?;
        self.repeatExpr = vec!();
        for i in 0..self.a {
            self.repeatExpr.append(self.stream.read_s1()?);
        }
        match self.a {
            2 => {
                self.switchOnType = self.stream.read_s1()?;
            },
        }
        self.switchOnEndian = Box::new(ExprBits__EndianSwitch::new(self.stream, self, _root)?);
    }
}

impl ExprBits {
    fn enumInst(&mut self) -> Box<ExprBits__Items> {
        if let Some(x) = self.enumInst {
            return x;
        }

        self.enumInst = self.a;
        return self.enumInst;
    }
    fn instPos(&mut self) -> i8 {
        if let Some(x) = self.instPos {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(self.a);
        self.instPos = self.stream.read_s1()?;
        self.stream.seek(_pos);
        return self.instPos;
    }
}
enum ExprBits__Items {
    FOO,
    BAR,
}
#[derive(Default)]
pub struct ExprBits__EndianSwitch {
    pub foo: i16,
}

impl KaitaiStruct for ExprBits__EndianSwitch {
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
        self.foo = self.stream.read_s2()?;
    }
}

impl ExprBits__EndianSwitch {
}
