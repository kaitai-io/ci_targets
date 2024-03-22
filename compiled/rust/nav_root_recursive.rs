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
pub struct NavRootRecursive {
    pub value: u8,
    pub next: Box<NavRootRecursive>,
    pub rootValue: Option<u8>,
}

impl KaitaiStruct for NavRootRecursive {
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
        self.value = self.stream.read_u1()?;
        if self.value == 255 {
            self.next = Box::new(NavRootRecursive::new(self.stream, self, _root)?);
        }
    }
}

impl NavRootRecursive {
    fn rootValue(&mut self) -> u8 {
        if let Some(x) = self.rootValue {
            return x;
        }

        self.rootValue = self._root.value;
        return self.rootValue;
    }
}
