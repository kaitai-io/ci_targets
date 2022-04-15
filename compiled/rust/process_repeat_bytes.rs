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
pub struct ProcessRepeatBytes {
    pub bufs: Vec<Vec<u8>>,
    pub _raw_bufs: Vec<Vec<u8>>,
}

impl KaitaiStruct for ProcessRepeatBytes {
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
        self._raw_bufs = vec!();
        self.bufs = vec!();
        for i in 0..2 {
            self._raw_bufs.append(self.stream.read_bytes(5)?);
            self.bufs.append(&mut S::processXorOne(self._raw_bufs.last(), 158));
        }
    }
}

impl ProcessRepeatBytes {
}
