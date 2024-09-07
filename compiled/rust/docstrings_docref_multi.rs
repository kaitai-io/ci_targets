// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

/**
 * Sample docstring
 * \sa Plain text description of doc ref, page 42
 * \sa http://www.example.com/some/path/?even_with=query&more=2 Source
 * \sa http://www.example.com/three Documentation name
 */

#[derive(Default, Debug, Clone)]
pub struct DocstringsDocrefMulti {
    pub _root: SharedType<DocstringsDocrefMulti>,
    pub _parent: SharedType<DocstringsDocrefMulti>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DocstringsDocrefMulti {
    type Root = DocstringsDocrefMulti;
    type Parent = DocstringsDocrefMulti;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl DocstringsDocrefMulti {
}
impl DocstringsDocrefMulti {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
