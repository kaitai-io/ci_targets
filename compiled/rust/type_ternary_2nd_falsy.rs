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
pub struct TypeTernary2ndFalsy {
    pub intTruthy: u8,
    pub ut: Box<TypeTernary2ndFalsy__Foo>,
    pub nullUt: Box<TypeTernary2ndFalsy__Foo>,
    pub intArray: Vec<u8>,
    pub intArrayEmpty: Vec<u8>,
    pub vFloatZero: Option<f64>,
    pub t: Option<bool>,
    pub vIntNegZero: Option<i32>,
    pub vIntZero: Option<i8>,
    pub nullUtInst: Option<Box<TypeTernary2ndFalsy__Foo>>,
    pub vNullUtInst: Option<Box<TypeTernary2ndFalsy__Foo>>,
    pub vFalse: Option<bool>,
    pub vStrEmpty: Option<String>,
    pub vIntArrayEmpty: Option<Vec<u8>>,
    pub vNullUt: Option<Box<TypeTernary2ndFalsy__Foo>>,
    pub vFloatNegZero: Option<f64>,
    pub vStrWZero: Option<String>,
}

impl KaitaiStruct for TypeTernary2ndFalsy {
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
        self.intTruthy = self.stream.read_u1()?;
        self.ut = Box::new(TypeTernary2ndFalsy__Foo::new(self.stream, self, _root)?);
        if false {
            self.nullUt = Box::new(TypeTernary2ndFalsy__Foo::new(self.stream, self, _root)?);
        }
        self.intArray = vec!();
        for i in 0..2 {
            self.intArray.push(self.stream.read_u1()?);
        }
        self.intArrayEmpty = vec!();
        for i in 0..0 {
            self.intArrayEmpty.push(self.stream.read_u1()?);
        }
    }
}

impl TypeTernary2ndFalsy {
    fn vFloatZero(&mut self) -> f64 {
        if let Some(x) = self.vFloatZero {
            return x;
        }

        self.vFloatZero = if self.t { 0.0 } else { 3.14};
        return self.vFloatZero;
    }
    fn t(&mut self) -> bool {
        if let Some(x) = self.t {
            return x;
        }

        self.t = true;
        return self.t;
    }
    fn vIntNegZero(&mut self) -> i32 {
        if let Some(x) = self.vIntNegZero {
            return x;
        }

        self.vIntNegZero = if self.t { -0 } else { -20};
        return self.vIntNegZero;
    }
    fn vIntZero(&mut self) -> i8 {
        if let Some(x) = self.vIntZero {
            return x;
        }

        self.vIntZero = if self.t { 0 } else { 10};
        return self.vIntZero;
    }
    fn nullUtInst(&mut self) -> Box<TypeTernary2ndFalsy__Foo> {
        if let Some(x) = self.nullUtInst {
            return x;
        }

        if false {
            self.nullUtInst = self.ut;
        }
        return self.nullUtInst;
    }
    fn vNullUtInst(&mut self) -> Box<TypeTernary2ndFalsy__Foo> {
        if let Some(x) = self.vNullUtInst {
            return x;
        }

        self.vNullUtInst = if self.t { self.null_ut_inst } else { self.ut};
        return self.vNullUtInst;
    }
    fn vFalse(&mut self) -> bool {
        if let Some(x) = self.vFalse {
            return x;
        }

        self.vFalse = if self.t { false } else { true};
        return self.vFalse;
    }
    fn vStrEmpty(&mut self) -> String {
        if let Some(x) = self.vStrEmpty {
            return x;
        }

        self.vStrEmpty = if self.t { "" } else { "kaitai"};
        return self.vStrEmpty;
    }
    fn vIntArrayEmpty(&mut self) -> Vec<u8> {
        if let Some(x) = self.vIntArrayEmpty {
            return x;
        }

        self.vIntArrayEmpty = if self.t { self.int_array_empty } else { self.int_array};
        return self.vIntArrayEmpty;
    }
    fn vNullUt(&mut self) -> Box<TypeTernary2ndFalsy__Foo> {
        if let Some(x) = self.vNullUt {
            return x;
        }

        self.vNullUt = if self.t { self.null_ut } else { self.ut};
        return self.vNullUt;
    }
    fn vFloatNegZero(&mut self) -> f64 {
        if let Some(x) = self.vFloatNegZero {
            return x;
        }

        self.vFloatNegZero = if self.t { -0.0 } else { -2.72};
        return self.vFloatNegZero;
    }
    fn vStrWZero(&mut self) -> String {
        if let Some(x) = self.vStrWZero {
            return x;
        }

        self.vStrWZero = if self.t { "0" } else { "30"};
        return self.vStrWZero;
    }
}
#[derive(Default)]
pub struct TypeTernary2ndFalsy__Foo {
    pub m: u8,
}

impl KaitaiStruct for TypeTernary2ndFalsy__Foo {
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
        self.m = self.stream.read_u1()?;
    }
}

impl TypeTernary2ndFalsy__Foo {
}
