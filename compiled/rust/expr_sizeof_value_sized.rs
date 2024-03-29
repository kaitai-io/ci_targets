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
pub struct ExprSizeofValueSized {
    pub block1: Box<ExprSizeofValueSized__Block>,
    pub more: u16,
    pub _raw_block1: Vec<u8>,
    pub selfSizeof: Option<i32>,
    pub sizeofBlock: Option<i32>,
    pub sizeofBlockA: Option<i32>,
    pub sizeofBlockB: Option<i32>,
    pub sizeofBlockC: Option<i32>,
}

impl KaitaiStruct for ExprSizeofValueSized {
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
        self._raw_block1 = self.stream.read_bytes(12)?;
        let mut io = Cursor::new(self._raw_block1);
        self.block1 = Box::new(ExprSizeofValueSized__Block::new(self.stream, self, _root)?);
        self.more = self.stream.read_u2le()?;
    }
}

impl ExprSizeofValueSized {
    fn selfSizeof(&mut self) -> i32 {
        if let Some(x) = self.selfSizeof {
            return x;
        }

        self.selfSizeof = 14;
        return self.selfSizeof;
    }
    fn sizeofBlock(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlock {
            return x;
        }

        self.sizeofBlock = 12;
        return self.sizeofBlock;
    }
    fn sizeofBlockA(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlockA {
            return x;
        }

        self.sizeofBlockA = 1;
        return self.sizeofBlockA;
    }
    fn sizeofBlockB(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlockB {
            return x;
        }

        self.sizeofBlockB = 4;
        return self.sizeofBlockB;
    }
    fn sizeofBlockC(&mut self) -> i32 {
        if let Some(x) = self.sizeofBlockC {
            return x;
        }

        self.sizeofBlockC = 2;
        return self.sizeofBlockC;
    }
}
#[derive(Default)]
pub struct ExprSizeofValueSized__Block {
    pub a: u8,
    pub b: u32,
    pub c: Vec<u8>,
}

impl KaitaiStruct for ExprSizeofValueSized__Block {
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

impl ExprSizeofValueSized__Block {
}
