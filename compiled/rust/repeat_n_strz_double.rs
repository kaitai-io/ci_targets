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
pub struct RepeatNStrzDouble {
    pub qty: u32,
    pub lines1: Vec<String>,
    pub lines2: Vec<String>,
}

impl KaitaiStruct for RepeatNStrzDouble {
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
        self.qty = self.stream.read_u4le()?;
        self.lines1 = vec!();
        for i in 0..self.qty / 2 {
            self.lines1.append(panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8"));
        }
        self.lines2 = vec!();
        for i in 0..self.qty / 2 {
            self.lines2.append(panic!("Unimplemented encoding for bytesToStr: {}", "UTF-8"));
        }
    }
}

impl RepeatNStrzDouble {
}
