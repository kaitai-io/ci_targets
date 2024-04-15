// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;
use hello_world::HelloWorld;
use params_def_array_usertype_imported::ParamsDefArrayUsertypeImported;

#[derive(Default)]
pub struct ImportsParamsDefArrayUsertypeImported {
    pub hws: Vec<Box<HelloWorld>>,
    pub two: Box<ParamsDefArrayUsertypeImported>,
}

impl KaitaiStruct for ImportsParamsDefArrayUsertypeImported {
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
        self.hws = vec!();
        for i in 0..2 {
            self.hws.append(Box::new(HelloWorld::new(self.stream, self, _root)?));
        }
        self.two = Box::new(ParamsDefArrayUsertypeImported::new(self.stream, self, _root)?);
    }
}

impl ImportsParamsDefArrayUsertypeImported {
}
