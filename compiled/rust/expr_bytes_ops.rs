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
pub struct ExprBytesOps {
    pub one: Vec<u8>,
    pub twoLast: Option<u8>,
    pub twoMax: Option<u8>,
    pub oneMin: Option<u8>,
    pub oneFirst: Option<u8>,
    pub oneMid: Option<u8>,
    pub two: Option<Vec<u8>>,
    pub twoMin: Option<u8>,
    pub twoMid: Option<u8>,
    pub oneSize: Option<i32>,
    pub oneLast: Option<u8>,
    pub twoSize: Option<i32>,
    pub oneMax: Option<u8>,
    pub twoFirst: Option<u8>,
}

impl KaitaiStruct for ExprBytesOps {
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
        self.one = self.stream.read_bytes(3)?;
    }
}

impl ExprBytesOps {
    fn twoLast(&mut self) -> u8 {
        if let Some(x) = self.twoLast {
            return x;
        }

        self.twoLast = self.two.last();
        return self.twoLast;
    }
    fn twoMax(&mut self) -> u8 {
        if let Some(x) = self.twoMax {
            return x;
        }

        self.twoMax = self.two.iter().max();
        return self.twoMax;
    }
    fn oneMin(&mut self) -> u8 {
        if let Some(x) = self.oneMin {
            return x;
        }

        self.oneMin = self.one.iter().min();
        return self.oneMin;
    }
    fn oneFirst(&mut self) -> u8 {
        if let Some(x) = self.oneFirst {
            return x;
        }

        self.oneFirst = self.one.first();
        return self.oneFirst;
    }
    fn oneMid(&mut self) -> u8 {
        if let Some(x) = self.oneMid {
            return x;
        }

        self.oneMid = self.one[1];
        return self.oneMid;
    }
    fn two(&mut self) -> Vec<u8> {
        if let Some(x) = self.two {
            return x;
        }

        self.two = vec!([0x41, 0x43, 0x4b]);
        return self.two;
    }
    fn twoMin(&mut self) -> u8 {
        if let Some(x) = self.twoMin {
            return x;
        }

        self.twoMin = self.two.iter().min();
        return self.twoMin;
    }
    fn twoMid(&mut self) -> u8 {
        if let Some(x) = self.twoMid {
            return x;
        }

        self.twoMid = self.two[1];
        return self.twoMid;
    }
    fn oneSize(&mut self) -> i32 {
        if let Some(x) = self.oneSize {
            return x;
        }

        self.oneSize = self.one.len();
        return self.oneSize;
    }
    fn oneLast(&mut self) -> u8 {
        if let Some(x) = self.oneLast {
            return x;
        }

        self.oneLast = self.one.last();
        return self.oneLast;
    }
    fn twoSize(&mut self) -> i32 {
        if let Some(x) = self.twoSize {
            return x;
        }

        self.twoSize = self.two.len();
        return self.twoSize;
    }
    fn oneMax(&mut self) -> u8 {
        if let Some(x) = self.oneMax {
            return x;
        }

        self.oneMax = self.one.iter().max();
        return self.oneMax;
    }
    fn twoFirst(&mut self) -> u8 {
        if let Some(x) = self.twoFirst {
            return x;
        }

        self.twoFirst = self.two.first();
        return self.twoFirst;
    }
}
