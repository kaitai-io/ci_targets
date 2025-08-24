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

#[derive(Default, Debug, Clone)]
pub struct Imported2 {
    pub _root: SharedType<Imported2>,
    pub _parent: SharedType<Imported2>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Imported2 {
    type Root = Imported2;
    type Parent = Imported2;

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
        *self_rc.one.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl Imported2 {
}
impl Imported2 {
    pub fn one(&self) -> Ref<'_, u8> {
        self.one.borrow()
    }
}
impl Imported2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
