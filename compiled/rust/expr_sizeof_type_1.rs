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
pub struct ExprSizeofType1 {
    pub sizeofBlock: Option<i32>,
    pub sizeofSubblock: Option<i32>,
}

impl KaitaiStruct for ExprSizeofType1 {
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

impl ExprSizeofType1 {
    fn sizeofBlock(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlock {
            return x;
        }

        self.sizeofBlock = 11;
        return self.sizeofBlock;
    }
    fn sizeofSubblock(&mut self) -> i32 {
        if let Some(x) = self.sizeofSubblock {
            return x;
        }

        self.sizeofSubblock = 4;
        return self.sizeofSubblock;
    }
}
#[derive(Default)]
pub struct ExprSizeofType1__Block {
    pub a: u8,
    pub b: u32,
    pub c: Vec<u8>,
    pub d: Box<ExprSizeofType1__Block__Subblock>,
}

impl KaitaiStruct for ExprSizeofType1__Block {
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
        self.a = self.stream.read_u1()?;
        self.b = self.stream.read_u4le()?;
        self.c = self.stream.read_bytes(2)?;
        self.d = Box::new(ExprSizeofType1__Block__Subblock::new(self.stream, self, _root)?);
    }
}

impl ExprSizeofType1__Block {
}
#[derive(Default)]
pub struct ExprSizeofType1__Block__Subblock {
    pub a: Vec<u8>,
}

impl KaitaiStruct for ExprSizeofType1__Block__Subblock {
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
        self.a = self.stream.read_bytes(4)?;
    }
}

impl ExprSizeofType1__Block__Subblock {
}
