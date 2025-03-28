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
use super::vlq_base128_le::VlqBase128Le;

#[derive(Default, Debug, Clone)]
pub struct ImportsAbs {
    pub _root: SharedType<ImportsAbs>,
    pub _parent: SharedType<ImportsAbs>,
    pub _self: SharedType<Self>,
    len: RefCell<OptRc<VlqBase128Le>>,
    body: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsAbs {
    type Root = ImportsAbs;
    type Parent = ImportsAbs;

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
        let t = Self::read_into::<_, VlqBase128Le>(&*_io, None, None)?.into();
        *self_rc.len.borrow_mut() = t;
        *self_rc.body.borrow_mut() = _io.read_bytes(*self_rc.len().value()? as usize)?.into();
        Ok(())
    }
}
impl ImportsAbs {
}
impl ImportsAbs {
    pub fn len(&self) -> Ref<OptRc<VlqBase128Le>> {
        self.len.borrow()
    }
}
impl ImportsAbs {
    pub fn body(&self) -> Ref<Vec<u8>> {
        self.body.borrow()
    }
}
impl ImportsAbs {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
