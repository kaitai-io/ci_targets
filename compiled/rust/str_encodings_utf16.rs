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
pub struct StrEncodingsUtf16 {
    pub lenBe: u32,
    pub beBomRemoved: Box<StrEncodingsUtf16__StrBeBomRemoved>,
    pub lenLe: u32,
    pub leBomRemoved: Box<StrEncodingsUtf16__StrLeBomRemoved>,
    pub _raw_beBomRemoved: Vec<u8>,
    pub _raw_leBomRemoved: Vec<u8>,
}

impl KaitaiStruct for StrEncodingsUtf16 {
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
        self.lenBe = self.stream.read_u4le()?;
        self._raw_beBomRemoved = self.stream.read_bytes(self.len_be)?;
        let mut io = Cursor::new(self._raw_beBomRemoved);
        self.beBomRemoved = Box::new(StrEncodingsUtf16__StrBeBomRemoved::new(self.stream, self, _root)?);
        self.lenLe = self.stream.read_u4le()?;
        self._raw_leBomRemoved = self.stream.read_bytes(self.len_le)?;
        let mut io = Cursor::new(self._raw_leBomRemoved);
        self.leBomRemoved = Box::new(StrEncodingsUtf16__StrLeBomRemoved::new(self.stream, self, _root)?);
    }
}

impl StrEncodingsUtf16 {
}
#[derive(Default)]
pub struct StrEncodingsUtf16__StrBeBomRemoved {
    pub bom: u16,
    pub str: String,
}

impl KaitaiStruct for StrEncodingsUtf16__StrBeBomRemoved {
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
        self.bom = self.stream.read_u2be()?;
        self.str = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16BE");
    }
}

impl StrEncodingsUtf16__StrBeBomRemoved {
}
#[derive(Default)]
pub struct StrEncodingsUtf16__StrLeBomRemoved {
    pub bom: u16,
    pub str: String,
}

impl KaitaiStruct for StrEncodingsUtf16__StrLeBomRemoved {
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
        self.bom = self.stream.read_u2le()?;
        self.str = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl StrEncodingsUtf16__StrLeBomRemoved {
}
