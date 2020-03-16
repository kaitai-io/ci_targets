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
pub struct EosExceptionU4 {
    pub envelope: Box<EosExceptionU4__Data>,
    pub _raw_envelope: Vec<u8>,
}

impl KaitaiStruct for EosExceptionU4 {
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
        self._raw_envelope = self.stream.read_bytes(6)?;
        let mut io = Cursor::new(self._raw_envelope);
        self.envelope = Box::new(EosExceptionU4__Data::new(self.stream, self, _root)?);
    }
}

impl EosExceptionU4 {
}
#[derive(Default)]
pub struct EosExceptionU4__Data {
    pub prebuf: Vec<u8>,
    pub failInt: u32,
}

impl KaitaiStruct for EosExceptionU4__Data {
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
        self.prebuf = self.stream.read_bytes(3)?;
        self.failInt = self.stream.read_u4le()?;
    }
}

impl EosExceptionU4__Data {
}
