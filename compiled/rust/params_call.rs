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
pub struct ParamsCall {
    pub buf1: Box<ParamsCall__MyStr1>,
    pub buf2: Box<ParamsCall__MyStr2>,
}

impl KaitaiStruct for ParamsCall {
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
        self.buf1 = Box::new(ParamsCall__MyStr1::new(self.stream, self, _root)?);
        self.buf2 = Box::new(ParamsCall__MyStr2::new(self.stream, self, _root)?);
    }
}

impl ParamsCall {
}
#[derive(Default)]
pub struct ParamsCall__MyStr1 {
    pub body: String,
}

impl KaitaiStruct for ParamsCall__MyStr1 {
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
        self.body = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8");
    }
}

impl ParamsCall__MyStr1 {
}
#[derive(Default)]
pub struct ParamsCall__MyStr2 {
    pub body: String,
    pub trailer: u8,
}

impl KaitaiStruct for ParamsCall__MyStr2 {
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
        self.body = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8");
        if self.has_trailer {
            self.trailer = self.stream.read_u1()?;
        }
    }
}

impl ParamsCall__MyStr2 {
}
