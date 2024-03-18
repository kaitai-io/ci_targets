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
pub struct NestedTypesImport {
    pub aCc: Box<NestedTypes3__SubtypeA__SubtypeCc>,
    pub aCD: Box<NestedTypes3__SubtypeA__SubtypeC__SubtypeD>,
    pub b: Box<NestedTypes3__SubtypeB>,
}

impl KaitaiStruct for NestedTypesImport {
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
        self.aCc = Box::new(NestedTypes3__SubtypeA__SubtypeCc::new(self.stream, self, _root)?);
        self.aCD = Box::new(NestedTypes3__SubtypeA__SubtypeC__SubtypeD::new(self.stream, self, _root)?);
        self.b = Box::new(NestedTypes3__SubtypeB::new(self.stream, self, _root)?);
    }
}

impl NestedTypesImport {
}
