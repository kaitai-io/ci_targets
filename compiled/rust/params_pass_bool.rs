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
pub struct ParamsPassBool {
    pub sFalse: bool,
    pub sTrue: bool,
    pub seqB1: Box<ParamsPassBool__ParamTypeB1>,
    pub seqBool: Box<ParamsPassBool__ParamTypeBool>,
    pub literalB1: Box<ParamsPassBool__ParamTypeB1>,
    pub literalBool: Box<ParamsPassBool__ParamTypeBool>,
    pub instB1: Box<ParamsPassBool__ParamTypeB1>,
    pub instBool: Box<ParamsPassBool__ParamTypeBool>,
    pub vFalse: Option<bool>,
    pub vTrue: Option<bool>,
}

impl KaitaiStruct for ParamsPassBool {
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
        self.sFalse = self.stream.read_bits_int(1)? != 0;
        self.sTrue = self.stream.read_bits_int(1)? != 0;
        self.stream.alignToByte();
        self.seqB1 = Box::new(ParamsPassBool__ParamTypeB1::new(self.stream, self, _root)?);
        self.seqBool = Box::new(ParamsPassBool__ParamTypeBool::new(self.stream, self, _root)?);
        self.literalB1 = Box::new(ParamsPassBool__ParamTypeB1::new(self.stream, self, _root)?);
        self.literalBool = Box::new(ParamsPassBool__ParamTypeBool::new(self.stream, self, _root)?);
        self.instB1 = Box::new(ParamsPassBool__ParamTypeB1::new(self.stream, self, _root)?);
        self.instBool = Box::new(ParamsPassBool__ParamTypeBool::new(self.stream, self, _root)?);
    }
}

impl ParamsPassBool {
    fn vFalse(&mut self) -> bool {
        if let Some(x) = self.vFalse {
            return x;
        }

        self.vFalse = false;
        return self.vFalse;
    }
    fn vTrue(&mut self) -> bool {
        if let Some(x) = self.vTrue {
            return x;
        }

        self.vTrue = true;
        return self.vTrue;
    }
}
#[derive(Default)]
pub struct ParamsPassBool__ParamTypeB1 {
    pub foo: Vec<u8>,
}

impl KaitaiStruct for ParamsPassBool__ParamTypeB1 {
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
        self.foo = self.stream.read_bytes(if self.arg { 1 } else { 2})?;
    }
}

impl ParamsPassBool__ParamTypeB1 {
}
#[derive(Default)]
pub struct ParamsPassBool__ParamTypeBool {
    pub foo: Vec<u8>,
}

impl KaitaiStruct for ParamsPassBool__ParamTypeBool {
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
        self.foo = self.stream.read_bytes(if self.arg { 1 } else { 2})?;
    }
}

impl ParamsPassBool__ParamTypeBool {
}
