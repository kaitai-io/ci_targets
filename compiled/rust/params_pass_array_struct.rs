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
pub struct ParamsPassArrayStruct {
    pub one: Box<ParamsPassArrayStruct__Foo>,
    pub two: Box<ParamsPassArrayStruct__Bar>,
    pub passStructs: Box<ParamsPassArrayStruct__StructType>,
    pub oneTwo: Option<Vec<Option<Box<KaitaiStruct>>>>,
}

impl KaitaiStruct for ParamsPassArrayStruct {
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
        self.one = Box::new(ParamsPassArrayStruct__Foo::new(self.stream, self, _root)?);
        self.two = Box::new(ParamsPassArrayStruct__Bar::new(self.stream, self, _root)?);
        self.passStructs = Box::new(ParamsPassArrayStruct__StructType::new(self.stream, self, _root)?);
    }
}

impl ParamsPassArrayStruct {
    fn oneTwo(&mut self) -> Vec<Option<Box<KaitaiStruct>>> {
        if let Some(x) = self.oneTwo {
            return x;
        }

        self.oneTwo = [self.one, self.two];
        return self.oneTwo;
    }
}
#[derive(Default)]
pub struct ParamsPassArrayStruct__Foo {
    pub f: u8,
}

impl KaitaiStruct for ParamsPassArrayStruct__Foo {
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
        self.f = self.stream.read_u1()?;
    }
}

impl ParamsPassArrayStruct__Foo {
}
#[derive(Default)]
pub struct ParamsPassArrayStruct__Bar {
    pub b: u8,
}

impl KaitaiStruct for ParamsPassArrayStruct__Bar {
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
        self.b = self.stream.read_u1()?;
    }
}

impl ParamsPassArrayStruct__Bar {
}
#[derive(Default)]
pub struct ParamsPassArrayStruct__StructType {
}

impl KaitaiStruct for ParamsPassArrayStruct__StructType {
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

impl ParamsPassArrayStruct__StructType {
}
