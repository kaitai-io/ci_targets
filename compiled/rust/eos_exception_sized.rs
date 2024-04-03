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
pub struct EosExceptionSized {
    pub envelope: Box<EosExceptionSized__Data>,
    pub _raw_envelope: Vec<u8>,
}

impl KaitaiStruct for EosExceptionSized {
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
        self.envelope = Box::new(EosExceptionSized__Data::new(self.stream, self, _root)?);
    }
}

impl EosExceptionSized {
}
#[derive(Default)]
pub struct EosExceptionSized__Data {
    pub buf: Box<EosExceptionSized__Foo>,
    pub _raw_buf: Vec<u8>,
}

impl KaitaiStruct for EosExceptionSized__Data {
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
        self._raw_buf = self.stream.read_bytes(7)?;
        let mut io = Cursor::new(self._raw_buf);
        self.buf = Box::new(EosExceptionSized__Foo::new(self.stream, self, _root)?);
    }
}

impl EosExceptionSized__Data {
}
#[derive(Default)]
pub struct EosExceptionSized__Foo {
}

impl KaitaiStruct for EosExceptionSized__Foo {
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

impl EosExceptionSized__Foo {
}
