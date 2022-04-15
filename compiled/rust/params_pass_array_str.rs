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
pub struct ParamsPassArrayStr {
    pub strArray: Vec<String>,
    pub passStrArray: Box<ParamsPassArrayStr__WantsStrs>,
    pub passStrArrayCalc: Box<ParamsPassArrayStr__WantsStrs>,
    pub strArrayCalc: Option<Vec<String>>,
}

impl KaitaiStruct for ParamsPassArrayStr {
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
        self.strArray = vec!();
        for i in 0..3 {
            self.strArray.append(panic!("Unimplemented encoding for bytesToStr: {}", "ascii"));
        }
        self.passStrArray = Box::new(ParamsPassArrayStr__WantsStrs::new(self.stream, self, _root)?);
        self.passStrArrayCalc = Box::new(ParamsPassArrayStr__WantsStrs::new(self.stream, self, _root)?);
    }
}

impl ParamsPassArrayStr {
    fn strArrayCalc(&mut self) -> Vec<String> {
        if let Some(x) = self.strArrayCalc {
            return x;
        }

        self.strArrayCalc = ["aB", "Cd"];
        return self.strArrayCalc;
    }
}
#[derive(Default)]
pub struct ParamsPassArrayStr__WantsStrs {
}

impl KaitaiStruct for ParamsPassArrayStr__WantsStrs {
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

impl ParamsPassArrayStr__WantsStrs {
}
