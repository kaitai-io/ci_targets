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
pub struct ExprStrEncodings {
    pub lenOf1: u16,
    pub str1: String,
    pub lenOf2: u16,
    pub str2: String,
    pub lenOf3: u16,
    pub str3: String,
    pub lenOf4: u16,
    pub str4: String,
    pub str4GtStrFromBytes: Option<bool>,
    pub str1Eq: Option<bool>,
    pub str4Eq: Option<bool>,
    pub str3EqStr2: Option<bool>,
    pub str4GtStrCalc: Option<bool>,
    pub str2Eq: Option<bool>,
    pub str3Eq: Option<bool>,
}

impl KaitaiStruct for ExprStrEncodings {
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
        self.str1 = String::from_utf8_lossy(self.stream.read_bytes(self.len_of_1)?);
        self.lenOf2 = self.stream.read_u2le()?;
        self.str2 = panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8");
        self.lenOf3 = self.stream.read_u2le()?;
        self.str3 = panic!("Unimplemented encoding for bytesToStr: {}", "SJIS");
        self.lenOf4 = self.stream.read_u2le()?;
        self.str4 = panic!("Unimplemented encoding for bytesToStr: {}", "CP437");
    }
}

impl ExprStrEncodings {
    fn str4GtStrFromBytes(&mut self) -> bool {
        if let Some(x) = self.str4GtStrFromBytes {
            return x;
        }

        self.str4GtStrFromBytes = self.str4 > panic!("Unimplemented encoding for bytesToStr: {}", "CP437");
        return self.str4GtStrFromBytes;
    }
    fn str1Eq(&mut self) -> bool {
        if let Some(x) = self.str1Eq {
            return x;
        }

        self.str1Eq = self.str1 == "Some ASCII";
        return self.str1Eq;
    }
    fn str4Eq(&mut self) -> bool {
        if let Some(x) = self.str4Eq {
            return x;
        }

        self.str4Eq = self.str4 == "\u{2591}\u{2592}\u{2593}";
        return self.str4Eq;
    }
    fn str3EqStr2(&mut self) -> bool {
        if let Some(x) = self.str3EqStr2 {
            return x;
        }

        self.str3EqStr2 = self.str3 == self.str2;
        return self.str3EqStr2;
    }
    fn str4GtStrCalc(&mut self) -> bool {
        if let Some(x) = self.str4GtStrCalc {
            return x;
        }

        self.str4GtStrCalc = self.str4 > "\u{2524}";
        return self.str4GtStrCalc;
    }
    fn str2Eq(&mut self) -> bool {
        if let Some(x) = self.str2Eq {
            return x;
        }

        self.str2Eq = self.str2 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}";
        return self.str2Eq;
    }
    fn str3Eq(&mut self) -> bool {
        if let Some(x) = self.str3Eq {
            return x;
        }

        self.str3Eq = self.str3 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}";
        return self.str3Eq;
    }
}
