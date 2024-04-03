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
pub struct EnumImportLiterals {
    pub pet1Eq: Option<bool>,
    pub pet1ToI: Option<i32>,
    pub pet2: Option<Box<EnumDeep__Container1__Container2__Animal>>,
}

impl KaitaiStruct for EnumImportLiterals {
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

impl EnumImportLiterals {
    fn pet1Eq(&mut self) -> bool {
        if let Some(x) = self.pet1Eq {
            return x;
        }

        self.pet1Eq = if true { Enum0__Animal::CHICKEN } else { Enum0__Animal::DOG} == Enum0__Animal::CHICKEN;
        return self.pet1Eq;
    }
    fn pet1ToI(&mut self) -> i32 {
        if let Some(x) = self.pet1ToI {
            return x;
        }

        self.pet1ToI = Enum0__Animal::CAT;
        return self.pet1ToI;
    }
    fn pet2(&mut self) -> Box<EnumDeep__Container1__Container2__Animal> {
        if let Some(x) = self.pet2 {
            return x;
        }

        self.pet2 = EnumDeep__Container1__Container2__Animal::HARE;
        return self.pet2;
    }
}
