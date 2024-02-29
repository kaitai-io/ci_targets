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
pub struct IntegersMinMax {
    pub unsignedMin: Box<IntegersMinMax__Unsigned>,
    pub unsignedMax: Box<IntegersMinMax__Unsigned>,
    pub signedMin: Box<IntegersMinMax__Signed>,
    pub signedMax: Box<IntegersMinMax__Signed>,
}

impl KaitaiStruct for IntegersMinMax {
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
        self.unsignedMin = Box::new(IntegersMinMax__Unsigned::new(self.stream, self, _root)?);
        self.unsignedMax = Box::new(IntegersMinMax__Unsigned::new(self.stream, self, _root)?);
        self.signedMin = Box::new(IntegersMinMax__Signed::new(self.stream, self, _root)?);
        self.signedMax = Box::new(IntegersMinMax__Signed::new(self.stream, self, _root)?);
    }
}

impl IntegersMinMax {
}
#[derive(Default)]
pub struct IntegersMinMax__Signed {
    pub s1: i8,
    pub s2le: i16,
    pub s4le: i32,
    pub s8le: i64,
    pub s2be: i16,
    pub s4be: i32,
    pub s8be: i64,
}

impl KaitaiStruct for IntegersMinMax__Signed {
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
        self.s1 = self.stream.read_s1()?;
        self.s2le = self.stream.read_s2le()?;
        self.s4le = self.stream.read_s4le()?;
        self.s8le = self.stream.read_s8le()?;
        self.s2be = self.stream.read_s2be()?;
        self.s4be = self.stream.read_s4be()?;
        self.s8be = self.stream.read_s8be()?;
    }
}

impl IntegersMinMax__Signed {
}
#[derive(Default)]
pub struct IntegersMinMax__Unsigned {
    pub u1: u8,
    pub u2le: u16,
    pub u4le: u32,
    pub u8le: u64,
    pub u2be: u16,
    pub u4be: u32,
    pub u8be: u64,
}

impl KaitaiStruct for IntegersMinMax__Unsigned {
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
        self.u1 = self.stream.read_u1()?;
        self.u2le = self.stream.read_u2le()?;
        self.u4le = self.stream.read_u4le()?;
        self.u8le = self.stream.read_u8le()?;
        self.u2be = self.stream.read_u2be()?;
        self.u4be = self.stream.read_u4be()?;
        self.u8be = self.stream.read_u8be()?;
    }
}

impl IntegersMinMax__Unsigned {
}
