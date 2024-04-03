// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use params_def_enum_imported::ParamsDefEnumImported;
use enum_import_seq::EnumImportSeq;

#[derive(Default)]
pub struct ImportsParamsDefEnumImported {
    pub one: Box<EnumImportSeq>,
    pub two: Box<ParamsDefEnumImported>,
}

impl KaitaiStruct for ImportsParamsDefEnumImported {
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
        self.one = Box::new(EnumImportSeq::new(self.stream, self, _root)?);
        self.two = Box::new(ParamsDefEnumImported::new(self.stream, self, _root)?);
    }
}

impl ImportsParamsDefEnumImported {
}
