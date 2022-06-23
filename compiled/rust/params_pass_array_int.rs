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
pub struct ParamsPassArrayInt {
    pub ints: Vec<u16>,
    pub passInts: Box<ParamsPassArrayInt__WantsInts>,
    pub passIntsCalc: Box<ParamsPassArrayInt__WantsInts>,
    pub intsCalc: Option<Vec<u16>>,
}

impl KaitaiStruct for ParamsPassArrayInt {
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
        self.ints = vec!();
        for i in 0..3 {
            self.ints.append(self.stream.read_u2le()?);
        }
        self.passInts = Box::new(ParamsPassArrayInt__WantsInts::new(self.stream, self, _root)?);
        self.passIntsCalc = Box::new(ParamsPassArrayInt__WantsInts::new(self.stream, self, _root)?);
    }
}

impl ParamsPassArrayInt {
    fn intsCalc(&mut self) -> Vec<u16> {
        if let Some(x) = self.intsCalc {
            return x;
        }

        self.intsCalc = [27643, 7];
        return self.intsCalc;
    }
}
#[derive(Default)]
pub struct ParamsPassArrayInt__WantsInts {
}

impl KaitaiStruct for ParamsPassArrayInt__WantsInts {
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

impl ParamsPassArrayInt__WantsInts {
}
