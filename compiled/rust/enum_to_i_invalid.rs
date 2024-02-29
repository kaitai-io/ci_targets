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
pub struct EnumToIInvalid {
    pub pet1: Box<EnumToIInvalid__Animal>,
    pub pet2: Box<EnumToIInvalid__Animal>,
    pub pet2EqIntF: Option<bool>,
    pub pet2Mod: Option<i32>,
    pub pet2IToS: Option<String>,
    pub oneLtTwo: Option<bool>,
    pub pet2EqIntT: Option<bool>,
    pub pet2I: Option<i32>,
}

impl KaitaiStruct for EnumToIInvalid {
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
        self.pet1 = self.stream.read_u1()?;
        self.pet2 = self.stream.read_u1()?;
    }
}

impl EnumToIInvalid {
    fn pet2EqIntF(&mut self) -> bool {
        if let Some(x) = self.pet2EqIntF {
            return x;
        }

        self.pet2EqIntF = self.pet_2 == 110;
        return self.pet2EqIntF;
    }
    fn pet2Mod(&mut self) -> i32 {
        if let Some(x) = self.pet2Mod {
            return x;
        }

        self.pet2Mod = (self.pet_2 + 32768);
        return self.pet2Mod;
    }
    fn pet2IToS(&mut self) -> String {
        if let Some(x) = self.pet2IToS {
            return x;
        }

        self.pet2IToS = self.pet_2.to_string();
        return self.pet2IToS;
    }
    fn oneLtTwo(&mut self) -> bool {
        if let Some(x) = self.oneLtTwo {
            return x;
        }

        self.oneLtTwo = self.pet_1 < self.pet_2;
        return self.oneLtTwo;
    }
    fn pet2EqIntT(&mut self) -> bool {
        if let Some(x) = self.pet2EqIntT {
            return x;
        }

        self.pet2EqIntT = self.pet_2 == 111;
        return self.pet2EqIntT;
    }
    fn pet2I(&mut self) -> i32 {
        if let Some(x) = self.pet2I {
            return x;
        }

        self.pet2I = self.pet_2;
        return self.pet2I;
    }
}
enum EnumToIInvalid__Animal {
    DOG,
    CAT,
}
