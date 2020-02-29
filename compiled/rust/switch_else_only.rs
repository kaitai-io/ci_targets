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
pub struct SwitchElseOnly {
    pub opcode: i8,
    pub primByte: i8,
    pub struct: Box<SwitchElseOnly__Data>,
    pub structSized: Box<SwitchElseOnly__Data>,
    pub _raw_structSized: Vec<u8>,
}

impl KaitaiStruct for SwitchElseOnly {
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
        self.opcode = self.stream.read_s1()?;
        match self.opcode {
            _ => {
                self.primByte = self.stream.read_s1()?;
            }
        }
        match self.opcode {
            _ => {
                self.struct = Box::new(SwitchElseOnly__Data::new(self.stream, self, _root)?);
            }
        }
        match self.opcode {
            _ => {
                self._raw_structSized = self.stream.read_bytes(4)?;
                let mut io = Cursor::new(self._raw_structSized);
                self.structSized = Box::new(SwitchElseOnly__Data::new(self.stream, self, _root)?);
            }
        }
    }
}

impl SwitchElseOnly {
}
#[derive(Default)]
pub struct SwitchElseOnly__Data {
    pub value: Vec<u8>,
}

impl KaitaiStruct for SwitchElseOnly__Data {
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
        self.value = self.stream.read_bytes(4)?;
    }
}

impl SwitchElseOnly__Data {
}
