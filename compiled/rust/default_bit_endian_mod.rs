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
pub struct DefaultBitEndianMod {
    pub main: Box<DefaultBitEndianMod__MainObj>,
}

impl KaitaiStruct for DefaultBitEndianMod {
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
        self.main = Box::new(DefaultBitEndianMod__MainObj::new(self.stream, self, _root)?);
    }
}

impl DefaultBitEndianMod {
}
#[derive(Default)]
pub struct DefaultBitEndianMod__MainObj {
    pub one: u64,
    pub two: u64,
    pub nest: Box<DefaultBitEndianMod__MainObj__Subnest>,
    pub nestBe: Box<DefaultBitEndianMod__MainObj__SubnestBe>,
}

impl KaitaiStruct for DefaultBitEndianMod__MainObj {
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
        self.one = self.stream.read_bits_int(9)?;
        self.two = self.stream.read_bits_int(15)?;
        self.stream.alignToByte();
        self.nest = Box::new(DefaultBitEndianMod__MainObj__Subnest::new(self.stream, self, _root)?);
        self.nestBe = Box::new(DefaultBitEndianMod__MainObj__SubnestBe::new(self.stream, self, _root)?);
    }
}

impl DefaultBitEndianMod__MainObj {
}
#[derive(Default)]
pub struct DefaultBitEndianMod__MainObj__Subnest {
    pub two: u64,
}

impl KaitaiStruct for DefaultBitEndianMod__MainObj__Subnest {
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
        self.two = self.stream.read_bits_int(16)?;
    }
}

impl DefaultBitEndianMod__MainObj__Subnest {
}
#[derive(Default)]
pub struct DefaultBitEndianMod__MainObj__SubnestBe {
    pub two: u64,
}

impl KaitaiStruct for DefaultBitEndianMod__MainObj__SubnestBe {
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
        self.two = self.stream.read_bits_int(16)?;
    }
}

impl DefaultBitEndianMod__MainObj__SubnestBe {
}
