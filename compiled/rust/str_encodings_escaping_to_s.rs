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
pub struct StrEncodingsEscapingToS {
    pub lenOf1: u16,
    pub str1Raw: Vec<u8>,
    pub lenOf2: u16,
    pub str2Raw: Vec<u8>,
    pub lenOf3: u16,
    pub str3Raw: Vec<u8>,
    pub lenOf4: u16,
    pub str4Raw: Vec<u8>,
    pub str1: Option<String>,
    pub str2: Option<String>,
    pub str3: Option<String>,
    pub str4: Option<String>,
}

impl KaitaiStruct for StrEncodingsEscapingToS {
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
        self.str1Raw = self.stream.read_bytes(self.len_of_1)?;
        self.lenOf2 = self.stream.read_u2le()?;
        self.str2Raw = self.stream.read_bytes(self.len_of_2)?;
        self.lenOf3 = self.stream.read_u2le()?;
        self.str3Raw = self.stream.read_bytes(self.len_of_3)?;
        self.lenOf4 = self.stream.read_u2le()?;
        self.str4Raw = self.stream.read_bytes(self.len_of_4)?;
    }
}

impl StrEncodingsEscapingToS {
    fn str1(&mut self) -> String {
        if let Some(x) = self.str1 {
            return x;
        }

        self.str1 = panic!("Unimplemented encoding for bytesToStr: {}", "ASCII\\x");
        return self.str1;
    }
    fn str2(&mut self) -> String {
        if let Some(x) = self.str2 {
            return x;
        }

        self.str2 = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8\'x");
        return self.str2;
    }
    fn str3(&mut self) -> String {
        if let Some(x) = self.str3 {
            return x;
        }

        self.str3 = panic!("Unimplemented encoding for bytesToStr: {}", "SJIS\"x");
        return self.str3;
    }
    fn str4(&mut self) -> String {
        if let Some(x) = self.str4 {
            return x;
        }

        self.str4 = panic!("Unimplemented encoding for bytesToStr: {}", "IBM437\nx");
        return self.str4;
    }
}
