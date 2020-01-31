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
pub struct ExprStrOps {
    pub one: String,
    pub oneSubstr3To3: Option<String>,
    pub toIR8: Option<i32>,
    pub toIR16: Option<i32>,
    pub twoSubstr0To10: Option<String>,
    pub oneLen: Option<i32>,
    pub twoLen: Option<i32>,
    pub oneSubstr2To5: Option<String>,
    pub toIR2: Option<i32>,
    pub twoRev: Option<String>,
    pub two: Option<String>,
    pub twoSubstr4To10: Option<String>,
    pub toIR10: Option<i32>,
    pub twoSubstr0To7: Option<String>,
    pub toIAttr: Option<i32>,
    pub oneSubstr0To3: Option<String>,
    pub oneRev: Option<String>,
}

impl KaitaiStruct for ExprStrOps {
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
        self.one = String::from_utf8_lossy(self.stream.read_bytes(5)?);
    }
}

impl ExprStrOps {
    fn oneSubstr3To3(&mut self) -> String {
        if let Some(x) = self.oneSubstr3To3 {
            return x;
        }

        self.oneSubstr3To3 = self.one.substring(3, 3);
        return self.oneSubstr3To3;
    }
    fn toIR8(&mut self) -> i32 {
        if let Some(x) = self.toIR8 {
            return x;
        }

        self.toIR8 = panic!("Converting from string to int in base {} is unimplemented"8);
        return self.toIR8;
    }
    fn toIR16(&mut self) -> i32 {
        if let Some(x) = self.toIR16 {
            return x;
        }

        self.toIR16 = panic!("Converting from string to int in base {} is unimplemented"16);
        return self.toIR16;
    }
    fn twoSubstr0To10(&mut self) -> String {
        if let Some(x) = self.twoSubstr0To10 {
            return x;
        }

        self.twoSubstr0To10 = self.two.substring(0, 10);
        return self.twoSubstr0To10;
    }
    fn oneLen(&mut self) -> i32 {
        if let Some(x) = self.oneLen {
            return x;
        }

        self.oneLen = self.one.len();
        return self.oneLen;
    }
    fn twoLen(&mut self) -> i32 {
        if let Some(x) = self.twoLen {
            return x;
        }

        self.twoLen = self.two.len();
        return self.twoLen;
    }
    fn oneSubstr2To5(&mut self) -> String {
        if let Some(x) = self.oneSubstr2To5 {
            return x;
        }

        self.oneSubstr2To5 = self.one.substring(2, 5);
        return self.oneSubstr2To5;
    }
    fn toIR2(&mut self) -> i32 {
        if let Some(x) = self.toIR2 {
            return x;
        }

        self.toIR2 = panic!("Converting from string to int in base {} is unimplemented"2);
        return self.toIR2;
    }
    fn twoRev(&mut self) -> String {
        if let Some(x) = self.twoRev {
            return x;
        }

        self.twoRev = self.two.graphemes(true).rev().flat_map(|g| g.chars()).collect();
        return self.twoRev;
    }
    fn two(&mut self) -> String {
        if let Some(x) = self.two {
            return x;
        }

        self.two = "0123456789";
        return self.two;
    }
    fn twoSubstr4To10(&mut self) -> String {
        if let Some(x) = self.twoSubstr4To10 {
            return x;
        }

        self.twoSubstr4To10 = self.two.substring(4, 10);
        return self.twoSubstr4To10;
    }
    fn toIR10(&mut self) -> i32 {
        if let Some(x) = self.toIR10 {
            return x;
        }

        self.toIR10 = "-072".parse().unwrap();
        return self.toIR10;
    }
    fn twoSubstr0To7(&mut self) -> String {
        if let Some(x) = self.twoSubstr0To7 {
            return x;
        }

        self.twoSubstr0To7 = self.two.substring(0, 7);
        return self.twoSubstr0To7;
    }
    fn toIAttr(&mut self) -> i32 {
        if let Some(x) = self.toIAttr {
            return x;
        }

        self.toIAttr = "9173".parse().unwrap();
        return self.toIAttr;
    }
    fn oneSubstr0To3(&mut self) -> String {
        if let Some(x) = self.oneSubstr0To3 {
            return x;
        }

        self.oneSubstr0To3 = self.one.substring(0, 3);
        return self.oneSubstr0To3;
    }
    fn oneRev(&mut self) -> String {
        if let Some(x) = self.oneRev {
            return x;
        }

        self.oneRev = self.one.graphemes(true).rev().flat_map(|g| g.chars()).collect();
        return self.oneRev;
    }
}
