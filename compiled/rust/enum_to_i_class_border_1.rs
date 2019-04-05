// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use enum_to_i_class_border_2::EnumToIClassBorder2;

#[derive(Default)]
pub struct EnumToIClassBorder1 {
    pub pet1: Box<EnumToIClassBorder1__Animal>,
    pub pet2: Box<EnumToIClassBorder1__Animal>,
    pub someDog: Option<Box<EnumToIClassBorder1__Animal>>,
    pub checker: Option<Box<EnumToIClassBorder2>>,
}

impl KaitaiStruct for EnumToIClassBorder1 {
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

impl EnumToIClassBorder1 {
    fn someDog(&mut self) -> Box<EnumToIClassBorder1__Animal> {
        if let Some(x) = self.someDog {
            return x;
        }

        self.someDog = 4;
        return self.someDog;
    }
    fn checker(&mut self) -> Box<EnumToIClassBorder2> {
        if let Some(x) = self.checker {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.checker = Box::new(EnumToIClassBorder2::new(self.stream, self, _root)?);
        self.stream.seek(_pos);
        return self.checker;
    }
}
enum EnumToIClassBorder1__Animal {
    DOG,
    CAT,
    CHICKEN,
}
