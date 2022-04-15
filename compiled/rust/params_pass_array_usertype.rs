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
pub struct ParamsPassArrayUsertype {
    pub blocks: Vec<Box<ParamsPassArrayUsertype__Block>>,
    pub passBlocks: Box<ParamsPassArrayUsertype__ParamType>,
}

impl KaitaiStruct for ParamsPassArrayUsertype {
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
        self.blocks = vec!();
        for i in 0..2 {
            self.blocks.append(Box::new(ParamsPassArrayUsertype__Block::new(self.stream, self, _root)?));
        }
        self.passBlocks = Box::new(ParamsPassArrayUsertype__ParamType::new(self.stream, self, _root)?);
    }
}

impl ParamsPassArrayUsertype {
}
#[derive(Default)]
pub struct ParamsPassArrayUsertype__Block {
    pub foo: u8,
}

impl KaitaiStruct for ParamsPassArrayUsertype__Block {
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
        self.foo = self.stream.read_u1()?;
    }
}

impl ParamsPassArrayUsertype__Block {
}
#[derive(Default)]
pub struct ParamsPassArrayUsertype__ParamType {
    pub one: Vec<u8>,
    pub two: Vec<u8>,
}

impl KaitaiStruct for ParamsPassArrayUsertype__ParamType {
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
        self.one = self.stream.read_bytes(self.bar[0].foo)?;
        self.two = self.stream.read_bytes(self.bar[1].foo)?;
    }
}

impl ParamsPassArrayUsertype__ParamType {
}
