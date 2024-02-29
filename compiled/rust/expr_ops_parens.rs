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
pub struct ExprOpsParens {
    pub boolAnd: Option<i32>,
    pub boolEq: Option<i32>,
    pub boolOr: Option<i32>,
    pub f2pi: Option<f64>,
    pub fE: Option<f64>,
    pub fSumToInt: Option<i32>,
    pub i42: Option<i8>,
    pub iM13: Option<i32>,
    pub iSumToStr: Option<String>,
    pub str0To4: Option<String>,
    pub str5To9: Option<String>,
    pub strConcatLen: Option<i32>,
    pub strConcatRev: Option<String>,
    pub strConcatSubstr2To7: Option<String>,
    pub strConcatToI: Option<i32>,
}

impl KaitaiStruct for ExprOpsParens {
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

impl ExprOpsParens {
    fn boolAnd(&mut self) -> i32 {
        if let Some(x) = self.boolAnd {
            return x;
        }

        self.boolAnd =  ((false) && (true))  as i32;
        return self.boolAnd;
    }
    fn boolEq(&mut self) -> i32 {
        if let Some(x) = self.boolEq {
            return x;
        }

        self.boolEq = false == true as i32;
        return self.boolEq;
    }
    fn boolOr(&mut self) -> i32 {
        if let Some(x) = self.boolOr {
            return x;
        }

        self.boolOr =  ((!(false)) || (false))  as i32;
        return self.boolOr;
    }
    fn f2pi(&mut self) -> f64 {
        if let Some(x) = self.f2pi {
            return x;
        }

        self.f2pi = 6.28;
        return self.f2pi;
    }
    fn fE(&mut self) -> f64 {
        if let Some(x) = self.fE {
            return x;
        }

        self.fE = 2.72;
        return self.fE;
    }
    fn fSumToInt(&mut self) -> i32 {
        if let Some(x) = self.fSumToInt {
            return x;
        }

        self.fSumToInt = (self.f_2pi + self.f_e) as i32;
        return self.fSumToInt;
    }
    fn i42(&mut self) -> i8 {
        if let Some(x) = self.i42 {
            return x;
        }

        self.i42 = 42;
        return self.i42;
    }
    fn iM13(&mut self) -> i32 {
        if let Some(x) = self.iM13 {
            return x;
        }

        self.iM13 = -13;
        return self.iM13;
    }
    fn iSumToStr(&mut self) -> String {
        if let Some(x) = self.iSumToStr {
            return x;
        }

        self.iSumToStr = (self.i_42 + self.i_m13).to_string();
        return self.iSumToStr;
    }
    fn str0To4(&mut self) -> String {
        if let Some(x) = self.str0To4 {
            return x;
        }

        self.str0To4 = "01234";
        return self.str0To4;
    }
    fn str5To9(&mut self) -> String {
        if let Some(x) = self.str5To9 {
            return x;
        }

        self.str5To9 = "56789";
        return self.str5To9;
    }
    fn strConcatLen(&mut self) -> i32 {
        if let Some(x) = self.strConcatLen {
            return x;
        }

        self.strConcatLen = format!("{}{}", self.str_0_to_4, self.str_5_to_9).len();
        return self.strConcatLen;
    }
    fn strConcatRev(&mut self) -> String {
        if let Some(x) = self.strConcatRev {
            return x;
        }

        self.strConcatRev = format!("{}{}", self.str_0_to_4, self.str_5_to_9).graphemes(true).rev().flat_map(|g| g.chars()).collect();
        return self.strConcatRev;
    }
    fn strConcatSubstr2To7(&mut self) -> String {
        if let Some(x) = self.strConcatSubstr2To7 {
            return x;
        }

        self.strConcatSubstr2To7 = format!("{}{}", self.str_0_to_4, self.str_5_to_9).substring(2, 7);
        return self.strConcatSubstr2To7;
    }
    fn strConcatToI(&mut self) -> i32 {
        if let Some(x) = self.strConcatToI {
            return x;
        }

        self.strConcatToI = format!("{}{}", self.str_0_to_4, self.str_5_to_9).parse().unwrap();
        return self.strConcatToI;
    }
}
