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
pub struct TermStrzUtf16V4 {
    pub s1: Box<TermStrzUtf16V4__S1Type>,
    pub skipTerm1: Vec<u8>,
    pub s2: Box<TermStrzUtf16V4__S2Type>,
    pub skipTerm2: Vec<u8>,
    pub s3: Box<TermStrzUtf16V4__S3Type>,
    pub _raw_s1: Vec<u8>,
    pub _raw_s2: Vec<u8>,
    pub _raw_s3: Vec<u8>,
}

impl KaitaiStruct for TermStrzUtf16V4 {
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
        self._raw_s1 = self.stream.read_bytes(6)?;
        let mut io = Cursor::new(self._raw_s1);
        self.s1 = Box::new(TermStrzUtf16V4__S1Type::new(self.stream, self, _root)?);
        self.skipTerm1 = self.stream.read_bytes(2)?;
        self._raw_s2 = self.stream.read_bytes(6)?;
        let mut io = Cursor::new(self._raw_s2);
        self.s2 = Box::new(TermStrzUtf16V4__S2Type::new(self.stream, self, _root)?);
        self.skipTerm2 = self.stream.read_bytes(2)?;
        self._raw_s3 = self.stream.read_bytes(6)?;
        let mut io = Cursor::new(self._raw_s3);
        self.s3 = Box::new(TermStrzUtf16V4__S3Type::new(self.stream, self, _root)?);
    }
}

impl TermStrzUtf16V4 {
}
#[derive(Default)]
pub struct TermStrzUtf16V4__S1Type {
    pub value: String,
}

impl KaitaiStruct for TermStrzUtf16V4__S1Type {
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
        self.value = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl TermStrzUtf16V4__S1Type {
}
#[derive(Default)]
pub struct TermStrzUtf16V4__S2Type {
    pub value: String,
}

impl KaitaiStruct for TermStrzUtf16V4__S2Type {
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
        self.value = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl TermStrzUtf16V4__S2Type {
}
#[derive(Default)]
pub struct TermStrzUtf16V4__S3Type {
    pub value: String,
}

impl KaitaiStruct for TermStrzUtf16V4__S3Type {
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
        self.value = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-16LE");
    }
}

impl TermStrzUtf16V4__S3Type {
}
