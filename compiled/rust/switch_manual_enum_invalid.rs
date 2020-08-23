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
pub struct SwitchManualEnumInvalid {
    pub opcodes: Vec<Box<SwitchManualEnumInvalid__Opcode>>,
}

impl KaitaiStruct for SwitchManualEnumInvalid {
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
        self.opcodes = [];
        while !self.stream.isEof() {
            self.opcodes.push(Box::new(SwitchManualEnumInvalid__Opcode::new(self.stream, self, _root)?));
        }
    }
}

impl SwitchManualEnumInvalid {
}
#[derive(Default)]
pub struct SwitchManualEnumInvalid__Opcode {
    pub code: Box<SwitchManualEnumInvalid__Opcode__CodeEnum>,
    pub body: Option<Box<KaitaiStruct>>,
}

impl KaitaiStruct for SwitchManualEnumInvalid__Opcode {
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
        self.code = self.stream.read_u1()?;
        match self.code {
            SwitchManualEnumInvalid__Opcode__CodeEnum::INTVAL => {
                self.body = Box::new(SwitchManualEnumInvalid__Opcode__Intval::new(self.stream, self, _root)?);
            },
            SwitchManualEnumInvalid__Opcode__CodeEnum::STRVAL => {
                self.body = Box::new(SwitchManualEnumInvalid__Opcode__Strval::new(self.stream, self, _root)?);
            },
        }
    }
}

impl SwitchManualEnumInvalid__Opcode {
}
enum SwitchManualEnumInvalid__Opcode__CodeEnum {
    INTVAL,
    STRVAL,
}
#[derive(Default)]
pub struct SwitchManualEnumInvalid__Opcode__Intval {
    pub value: u8,
}

impl KaitaiStruct for SwitchManualEnumInvalid__Opcode__Intval {
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
        self.value = self.stream.read_u1()?;
    }
}

impl SwitchManualEnumInvalid__Opcode__Intval {
}
#[derive(Default)]
pub struct SwitchManualEnumInvalid__Opcode__Strval {
    pub value: String,
}

impl KaitaiStruct for SwitchManualEnumInvalid__Opcode__Strval {
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
        self.value = String::from_utf8_lossy(self.stream.read_bytes_term(0, false, true, true)?);
    }
}

impl SwitchManualEnumInvalid__Opcode__Strval {
}
