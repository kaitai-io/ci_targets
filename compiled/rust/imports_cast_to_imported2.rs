// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use cast_to_imported2::CastToImported2;
use hello_world::HelloWorld;

#[derive(Default)]
pub struct ImportsCastToImported2 {
    pub hw: Box<HelloWorld>,
    pub two: Box<CastToImported2>,
}

impl KaitaiStruct for ImportsCastToImported2 {
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
        self.hw = Box::new(HelloWorld::new(self.stream, self, _root)?);
        self.two = Box::new(CastToImported2::new(self.stream, self, _root)?);
    }
}

impl ImportsCastToImported2 {
}
