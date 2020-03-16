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
pub struct ZlibSurrounded {
    pub pre: Vec<u8>,
    pub zlib: Box<ZlibSurrounded__Inflated>,
    pub post: Vec<u8>,
    pub _raw_zlib: Vec<u8>,
    pub _raw__raw_zlib: Vec<u8>,
}

impl KaitaiStruct for ZlibSurrounded {
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
        self.pre = self.stream.read_bytes(4)?;
        self._raw__raw_zlib = self.stream.read_bytes(12)?;
        self._raw_zlib = &mut S::processZlib(self._raw__raw_zlib);;
        let mut io = Cursor::new(self._raw_zlib);
        self.zlib = Box::new(ZlibSurrounded__Inflated::new(self.stream, self, _root)?);
        self.post = self.stream.read_bytes(4)?;
    }
}

impl ZlibSurrounded {
}
#[derive(Default)]
pub struct ZlibSurrounded__Inflated {
    pub inflated: i32,
}

impl KaitaiStruct for ZlibSurrounded__Inflated {
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
        self.inflated = self.stream.read_s4le()?;
    }
}

impl ZlibSurrounded__Inflated {
}
