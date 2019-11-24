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
pub struct ProcessRepeatUsertype {
    pub blocks: Vec<Box<ProcessRepeatUsertype__Block>>,
    pub _raw_blocks: Vec<Vec<u8>>,
    pub _raw__raw_blocks: Vec<Vec<u8>>,
}

impl KaitaiStruct for ProcessRepeatUsertype {
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
        self._raw_blocks = vec!();
        self.blocks = vec!();
        for i in 0..2 {
            self._raw__raw_blocks.push(self.stream.read_bytes(5)?);
            self._raw_blocks = &mut S::processXorOne(self._raw__raw_blocks, 158);
            let mut io = Cursor::new(self._raw_blocks.last());
            self.blocks.push(Box::new(ProcessRepeatUsertype__Block::new(self.stream, self, _root)?));
        }
    }
}

impl ProcessRepeatUsertype {
}
#[derive(Default)]
pub struct ProcessRepeatUsertype__Block {
    pub a: i32,
    pub b: i8,
}

impl KaitaiStruct for ProcessRepeatUsertype__Block {
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
        self.a = self.stream.read_s4le()?;
        self.b = self.stream.read_s1()?;
    }
}

impl ProcessRepeatUsertype__Block {
}
