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
pub struct ExprSizeofType0 {
    pub sizeofBlock: Option<i32>,
}

impl KaitaiStruct for ExprSizeofType0 {
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

impl ExprSizeofType0 {
    fn sizeofBlock(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlock {
            return x;
        }

        self.sizeofBlock = 7;
        return self.sizeofBlock;
    }
}
#[derive(Default)]
pub struct ExprSizeofType0__Block {
    pub a: u8,
    pub b: u32,
    pub c: Vec<u8>,
}

impl KaitaiStruct for ExprSizeofType0__Block {
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
    }
}

impl ExprSizeofType0__Block {
}
