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
pub struct ParamsEnum {
    pub one: Box<ParamsEnum__Animal>,
    pub invokeWithParam: Box<ParamsEnum__WithParam>,
}

impl KaitaiStruct for ParamsEnum {
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
        self.one = self.stream.read_u1()?;
        self.invokeWithParam = Box::new(ParamsEnum__WithParam::new(self.stream, self, _root)?);
    }
}

impl ParamsEnum {
}
enum ParamsEnum__Animal {
    DOG,
    CAT,
    CHICKEN,
}
#[derive(Default)]
pub struct ParamsEnum__WithParam {
    pub isCat: Option<bool>,
}

impl KaitaiStruct for ParamsEnum__WithParam {
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

impl ParamsEnum__WithParam {
    fn isCat(&mut self) -> bool {
        if let Some(x) = self.isCat {
            return x;
        }

        self.isCat = self.enumerated_one == ParamsEnum__Animal::CAT;
        return self.isCat;
    }
}
