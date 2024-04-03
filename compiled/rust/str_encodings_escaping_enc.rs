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
pub struct StrEncodingsEscapingEnc {
    pub lenOf1: u16,
    pub str1: Box<StrEncodingsEscapingEnc__Str1Wrapper>,
    pub lenOf2: u16,
    pub str2: Box<StrEncodingsEscapingEnc__Str2Wrapper>,
    pub lenOf3: u16,
    pub str3: Box<StrEncodingsEscapingEnc__Str3Wrapper>,
    pub lenOf4: u16,
    pub str4: Box<StrEncodingsEscapingEnc__Str4Wrapper>,
    pub _raw_str1: Vec<u8>,
    pub _raw_str2: Vec<u8>,
    pub _raw_str3: Vec<u8>,
    pub _raw_str4: Vec<u8>,
}

impl KaitaiStruct for StrEncodingsEscapingEnc {
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
        self.lenOf1 = self.stream.read_u2le()?;
        self._raw_str1 = self.stream.read_bytes(self.len_of_1)?;
        let mut io = Cursor::new(self._raw_str1);
        self.str1 = Box::new(StrEncodingsEscapingEnc__Str1Wrapper::new(self.stream, self, _root)?);
        self.lenOf2 = self.stream.read_u2le()?;
        self._raw_str2 = self.stream.read_bytes(self.len_of_2)?;
        let mut io = Cursor::new(self._raw_str2);
        self.str2 = Box::new(StrEncodingsEscapingEnc__Str2Wrapper::new(self.stream, self, _root)?);
        self.lenOf3 = self.stream.read_u2le()?;
        self._raw_str3 = self.stream.read_bytes(self.len_of_3)?;
        let mut io = Cursor::new(self._raw_str3);
        self.str3 = Box::new(StrEncodingsEscapingEnc__Str3Wrapper::new(self.stream, self, _root)?);
        self.lenOf4 = self.stream.read_u2le()?;
        self._raw_str4 = self.stream.read_bytes(self.len_of_4)?;
        let mut io = Cursor::new(self._raw_str4);
        self.str4 = Box::new(StrEncodingsEscapingEnc__Str4Wrapper::new(self.stream, self, _root)?);
    }
}

impl StrEncodingsEscapingEnc {
}
#[derive(Default)]
pub struct StrEncodingsEscapingEnc__Str1Wrapper {
    pub v: Option<String>,
}

impl KaitaiStruct for StrEncodingsEscapingEnc__Str1Wrapper {
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

impl StrEncodingsEscapingEnc__Str1Wrapper {
    fn v(&mut self) -> String {
        if let Some(x) = self.v {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.v = panic!("Unimplemented encoding for bytesToStr: {}", "ASCII\\x");
        self.stream.seek(_pos);
        return self.v;
    }
}
#[derive(Default)]
pub struct StrEncodingsEscapingEnc__Str2Wrapper {
    pub v: Option<String>,
}

impl KaitaiStruct for StrEncodingsEscapingEnc__Str2Wrapper {
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

impl StrEncodingsEscapingEnc__Str2Wrapper {
    fn v(&mut self) -> String {
        if let Some(x) = self.v {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.v = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8\'x");
        self.stream.seek(_pos);
        return self.v;
    }
}
#[derive(Default)]
pub struct StrEncodingsEscapingEnc__Str3Wrapper {
    pub v: Option<String>,
}

impl KaitaiStruct for StrEncodingsEscapingEnc__Str3Wrapper {
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

impl StrEncodingsEscapingEnc__Str3Wrapper {
    fn v(&mut self) -> String {
        if let Some(x) = self.v {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.v = panic!("Unimplemented encoding for bytesToStr: {}", "SJIS\"x");
        self.stream.seek(_pos);
        return self.v;
    }
}
#[derive(Default)]
pub struct StrEncodingsEscapingEnc__Str4Wrapper {
    pub v: Option<String>,
}

impl KaitaiStruct for StrEncodingsEscapingEnc__Str4Wrapper {
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

impl StrEncodingsEscapingEnc__Str4Wrapper {
    fn v(&mut self) -> String {
        if let Some(x) = self.v {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(0);
        self.v = panic!("Unimplemented encoding for bytesToStr: {}", "IBM437\nx");
        self.stream.seek(_pos);
        return self.v;
    }
}
