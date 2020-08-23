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
pub struct EnumDeepLiterals {
    pub pet1: Box<EnumDeepLiterals__Container1__Animal>,
    pub pet2: Box<EnumDeepLiterals__Container1__Container2__Animal>,
    pub isPet1Ok: Option<bool>,
    pub isPet2Ok: Option<bool>,
}

impl KaitaiStruct for EnumDeepLiterals {
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
        self.pet1 = self.stream.read_u4le()?;
        self.pet2 = self.stream.read_u4le()?;
    }
}

impl EnumDeepLiterals {
    fn isPet1Ok(&mut self) -> bool {
        if let Some(x) = self.isPet1Ok {
            return x;
        }

        self.isPet1Ok = self.pet_1 == EnumDeepLiterals__Container1__Animal::CAT;
        return self.isPet1Ok;
    }
    fn isPet2Ok(&mut self) -> bool {
        if let Some(x) = self.isPet2Ok {
            return x;
        }

        self.isPet2Ok = self.pet_2 == EnumDeepLiterals__Container1__Container2__Animal::HARE;
        return self.isPet2Ok;
    }
}
#[derive(Default)]
pub struct EnumDeepLiterals__Container1 {
}

impl KaitaiStruct for EnumDeepLiterals__Container1 {
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

impl EnumDeepLiterals__Container1 {
}
enum EnumDeepLiterals__Container1__Animal {
    DOG,
    CAT,
    CHICKEN,
}
#[derive(Default)]
pub struct EnumDeepLiterals__Container1__Container2 {
}

impl KaitaiStruct for EnumDeepLiterals__Container1__Container2 {
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

impl EnumDeepLiterals__Container1__Container2 {
}
enum EnumDeepLiterals__Container1__Container2__Animal {
    CANARY,
    TURTLE,
    HARE,
}
